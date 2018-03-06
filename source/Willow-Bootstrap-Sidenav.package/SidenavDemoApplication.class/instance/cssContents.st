updating
cssContents

	^ '.sidenav {
  overflow: auto;
  font-weight: 200;
  background-color: #2e353d;
  position: fixed;
  top: 0px;
  width: 300px;
  height: 100%;
  color: #e1ffff;
}
.sidenav .brand {
  background-color: #23282e;
  line-height: 50px;
  display: block;
  text-align: center;
}
.sidenav .navbar-toggle {
  display: none;
}
.sidenav ul,
.sidenav li {
  list-style: none;
  padding: 0px;
  margin: 0px;
  line-height: 35px;
  cursor: pointer;
  /*    
    .collapsed{
       .arrow:before{
                 font-family: FontAwesome;
                 content: "\f053";
                 display: inline-block;
                 padding-left:10px;
                 padding-right: 10px;
                 vertical-align: middle;
                 float:right;
            }
     }
*/
}
.sidenav ul :not(collapsed) .arrow:before,
.sidenav li :not(collapsed) .arrow:before {
  font-family: FontAwesome;
  content: "\f078";
  display: inline-block;
  padding-left: 10px;
  padding-right: 10px;
  vertical-align: middle;
  float: right;
}
.sidenav ul .active,
.sidenav li .active {
  border-left: 3px solid #d19b3d;
  background-color: #4f5b69;
}
.sidenav ul .collapsed-item li.active,
.sidenav li .collapsed-item li.active {
  color: #d19b3d;
}

.sidenav ul .collapsed-item li.active a,
.sidenav li .collapsed-item li.active a {
  color: #d19b3d;
}
.sidenav div.collapsed-item { 
  background-color: #181c20;
}

.sidenav ul .collapsed-item li,
.sidenav li .collapsed-item li {
  background-color: #181c20;
  border: none;
  line-height: 28px;
  border-bottom: 1px solid #23282e;
  margin-left: 0px;
}
.sidenav ul .collapsed-item li:hover,
.sidenav li .collapsed-item li:hover {
  background-color: #020203;
}
.sidenav ul .collapsed-item li:before,
.sidenav li .collapsed-item li:before {
  font-family: FontAwesome;
  content: "\f105";
  display: inline-block;
  padding-left: 10px;
  padding-right: 10px;
  vertical-align: middle;
}
.sidenav li {
  padding-left: 0px;
  border-left: 3px solid #2e353d;
  border-bottom: 1px solid #23282e;
}
.sidenav li a {
  text-decoration: none;
  color: #e1ffff;
}
.sidenav li a i {
  padding-left: 10px;
  width: 20px;
  padding-right: 20px;
}
.sidenav li:hover {
  border-left: 3px solid #d19b3d;
  background-color: #4f5b69;
  -webkit-transition: all 1s ease;
  -moz-transition: all 1s ease;
  -o-transition: all 1s ease;
  -ms-transition: all 1s ease;
  transition: all 1s ease;
}
@media (max-width: 767px) {
  .sidenav {
    position: relative;
    width: 100%;
    margin-bottom: 10px;
  }
  .sidenav .navbar-toggle {
    display: block;
    cursor: pointer;
    position: absolute;
    right: 10px;
    top: 0px;
    z-index: 10 !important;
    color: #000;
    text-align: center;
	 border-color: #333;
  }

}
@media (min-width: 767px) {
  .sidenav .menu-list .menu-content {
    display: block;
  }
}

@media (min-width: 767px) {
  div.container-fluid { 
	 margin-left: 300px;

  }
}

/* mios */
.icon-bar { 
  background-color: #fff;
 }
'