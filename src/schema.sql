CREATE Database datadig;
--使用数据库
use datadig;
--创建数据库
CREATE TABLE user (
`id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名称',
  'password' int not null COMMIT'密码',
 'number' int not null COMMIT'手机号',
   `emailAddress` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
 UNIQUE key idx_username(username),
 UNIQUE key idx_number(number),
) ENGINE=InnoDB    AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE userOperate{
`o_id` int(11) NOT NULL AUTO_INCREMENT,
'username' varchar(20)  not null COMMIT '用户名',
'importTime' timestamp not null COMMIT '导入时间',
'title' varchar(50)  COMMIT '处理方式',
PRIMARY KEY (`o_id`),
 UNIQUE key idx_importTime(importTime),
}ENGINE=InnoDB  AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--插入数据
insert into user(username,password,number,emailAddress)
value
('oudong',123456,136,'2935700750@qq.com'),
('ab',123456,145,'2935700751@qq.com'),
('ac',123456,123,'2935700752@qq.com'),
('ad',123456,167,'2935700753@qq.com'),
('ae',123456,189,'2935700754@qq.com');

insert into user(username,importTime)
value
('oudong','2017-01-01 00:11:11'),
('ab','2017-01-01 00:11:12'),
('ac','2017-01-01 00:11:13'),
('ad','2017-01-01 00:11:14'),
('ae','2017-01-01 00:11:15');