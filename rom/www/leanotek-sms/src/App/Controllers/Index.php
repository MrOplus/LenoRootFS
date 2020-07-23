<?php

namespace App\Controllers;

use \App\Models\Example as ExampleModel;
use \Swiftlet\Abstracts\Controller as ControllerAbstract;

/**
 * Index controller
 */
class Index extends ControllerAbstract
{

    protected $routes = array(
        'login' => 'index',
        'logout' => 'logout'
    );



	/**
	 * Default action
	 * @param $args array
	 */
	public function index(array $args = array())
	{
        $name = 'login';
        $this->view->setName($name);

        
          
                $_SESSION['authenticated'] = true;
                header('location:index.php?q=sms/inbox');
                exit();
            
           
        

	}

  
}
