//0.下载mysql express模块
//1.引入mysql express模块
const mysql = require("mysql");
const express = require("express");
//1.1引入模块cors
const cors = require("cors");

//2.创建连接池
var pool = mysql.createPool({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "ym"
});
//3.创建express对象
var server = express();
//3.1配置允许访问列
server.use(cors({
  origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
  credentials: true
}));
//3.11:加载模块 express session
const session = require("express-session");
server.use(session({
  secret:"128位随机字符串",
  resave:false,
  saveUninitialized:true,
  cookie:{
    maxAge:1000*60*60
  }
}));
//3.2配置静态资源目录 public
server.use(express.static("public"));
//3.3: 配置第三方中间件
const bodyPaeser = require("body-parser");
//3.4: 配置json是否是自动转换
server.use(bodyPaeser.urlencoded({ extended: false }))


//4.为express对象绑定监听端口 3000
server.listen(3000);


//功能一:用户注册
//1.用户post 请求路径/register
server.post("/register", (req, res) => {
  //2:获取二个参数 uname upwd
  var uid=req.query.uid;
  var uname = req.body.uname;
  var upwd = req.body.upwd;
  //3:创建sql
  var sql = "INSERT INTO ym_user VALUES(null,?,?,md5(?))";
  //4:执行sql
  pool.query(sql,[uid,uname,upwd],(err, result)=>{
    if (err) throw err;
    res.send({code: 1, msg: "添加成功"})
  })
}) 
//功能二:用户登录
//1:用户post 请求路径/login
server.post("/login",(req,res) => {
  //2:获取二个参数 uname upwd
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  //3:创建sql
  var sql="SELECT * FROM ym_user";
  sql+=" WHERE uname = ? AND upwd = md5(?)";
  //console.log(uname+"u"+upwd+"1")
  //4:执行sql
  pool.query(sql,[uname,upwd],(err, result)=>{
    if(err) throw err;
    //5:获取数据库返回结果
    //6:返回客户数据
    if(result.length==0){
      res.send({code:-1,msg:"用户名或密码有误"});
    }else{
      //登陆成功
      //获取当前登录用户id
      console.log(result[0])
      var uid=result[0].uid;
      //保存session对象中
      req.session.uid=uid;
      // console.log(req.session.uid);
      res.send({code:1,msg:"登录成功"});
    }
  })
});

//功能三:首页图片
server.get("/getImages", (req, res) => {
  var sql = "SELECT * FROM ym_tp";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

//功能四:商品分页显示
server.get("/getProducts",(req,res)=>{
  //1.获取用户参数 pno pageSize
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  //2.为参数设置默认值 pno:1 pageSize:4
  if(!pno){pno=1}
  if(!pageSize){pageSize=4};
  pageSize = parseInt(pageSize);
  //创建sql语句
  var sql="SELECT id,img,title,price,comment,good FROM ym_product LIMIT ?,?";
  //3.1计算开始记录数,几条记录
  var offset=(pno-1)*pageSize;
  //执行sql语句
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    res.send(result);
    //获取数据库返回结果并且发送到脚手架
  })
});

//功能五:模糊查询
server.get("/search",(req,res)=>{
  //1:获取参数并且默认值
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  if(!pno){pno=1}
  if(!pageSize){pageSize=6}
  //2:创建sql
  var sousuo=req.query.sousuo;
  var sql = "SELECT id,img,title,price,price,comment,good FROM ym_product WHERE title LIKE concat('%',?,'%') LIMIT ?,?";
  var offset = (pno-1)*pageSize;
  pageSize = parseInt(pageSize);
  pool.query(sql,[sousuo,offset,pageSize],(err,result)=>{
     if(err)throw err;
     res.send({code:1,data:result})
  })
  //3:返回值 json
})

//功能六:详情页轮播
server.get("/imglist",(req,res)=>{
  var lid=req.query.lid;
  var sql = "SELECT * FROM ym_lunbo WHERE lid=?";
  pool.query(sql,[lid],(err,result) => {
    if (err) throw err;
    //console.log(result);
    res.send(result);
  });
})

//功能七:详情页标题详情
server.get('/details',(req,res)=>{
  var lid=req.query.lid;
  var sql="select lid,title,price,pic from ym_details where lid=?";
  pool.query(sql,[lid],(err,result)=>{
    if(err)throw err;
    res.send({code:1,data:result})
  })
})

//功能八:详情页详情
server.get('/pic',(req,res)=>{
  var lid=req.query.lid;
  var sql="select lid,pic from ym_pic where lid=?";
  pool.query(sql,[lid],(err,result)=>{
    if(err)throw err;
    res.send({code:1,data:result})
  })
})

//功能九:用户点击购物车按钮 修改 查找
server.get("/getShopcart",(req,res)=>{
  var uid=1;
  var pid=req.query.pid;
  var pname=req.query.pname;
  var price=req.query.price;
  var pic=req.query.pic;
  //查询当前用户是否添加过此商品
  var sql="SELECT id FROM ym_cart WHERE uid=? AND pid=?";
  pool.query(sql,[uid,pid],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      //查询没有查询结果添加此商品
      var sql=`INSERT INTO ym_cart VALUES(null,'${uid}','${pid}','${price}','${pname}',1,'${pic}')`;
    }else{
      //创建sql语句如果有结果更新数据
      var sql=`UPDATE ym_cart SET count=count+1 WHERE uid=${uid} and pid=${pid}`;
    }
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({code:1,msg:"添加成功"})
    });
  });
});

//功能十:订单地址
server.get("/addr",(req,res)=>{
  var id=req.session.uid;
  console.log(id);
  if(!id){
    res.send({code:-1,msg:'请登录'});
    return;
  }
  //console.log(uid);
  var sql="select name,tle,place from ym_addr where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  });
});

//功能十一:加入购物车列表
server.get("/cart",(req,res)=>{
  var sql="select pid,price,pname,pic,id from ym_cart";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  });
});

//功能十二:删除购物车中某个商品
server.post("/removeItem",(req,res)=>{
  var id=req.body.id;
  var sql=" DELETE FROM ym_cart";
  sql+=" WHERE id=?";
  id=parseInt(id);
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    //执行sql语句影响行数
    //INSERET  UPDATE  DELETE 判断条件
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"});
    }else{
      res.send({code:-1,msg:"删除失败"});
    }
  })
});

//功能十三:删除购物车中多个商品
server.get("/removeMItem",(req,res)=>{
  //1.参数
  var ids=req.query.ids;
  //2.sql
  var sql="DELETE FROM ym_cart";
  sql+=" WHERE id IN ("+ids+")";
  //3.json
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"成功删除多个商品"})
    }else{
      res.send({code:-1,msg:"删除失败"})
    }
  })
}); 

//功能十四:查询所有地址
server.get("/addrlist",(req,res)=>{
  var sql="SELECT * FROM ym_addr ORDER BY id DESC";
  pool.query(sql,[],(err,result)=>{
    if (err) throw err;
    res.send({code:1,data:result})
  })
});

//功能十五:删除地址
server.get("/del",(req,res)=>{
  var id=req.query.id;
  var sql="DELETE FROM ym_addr WHERE id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result})
  })
});

//功能十六:修改地址
server.post("/update",(req,res)=>{
  var id=req.body.id;
  var name=req.body.name;
  var tle=req.body.tle;
  var place=req.body.place;
  var sql=`UPDATE ym_addr SET name='${name}',tle='${tle}',place='${place}' WHERE id=?`;
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:"修改成功"});
  });
});

//功能十七:添加地址
server.post("/insert",(req,res)=>{
  var name=req.body.name;
  var tle=req.body.tle;
  var place=req.body.place;
  var sql="INSERT INTO ym_addr VALUES(null,?,?,?)";
  pool.query(sql,[name,tle,place],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:"添加成功"})
  })
});