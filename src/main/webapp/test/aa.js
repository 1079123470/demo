var person1={
	name :"zz",
	age  : 18 ,
	room :"301"
};
var f1=function(){
	return '12';
}
function f2(){
	var aa=f1();
}
var name='outer';
var foo={
		name:'inner',
		getName:function(){
			console.log(this.name);//找this的当前对象
			return function(){
				console.log(this.name);//return this 全局变量
			}
		}
};
foo.getName()();