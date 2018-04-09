<?php

use Slim\Http\Request;
use Slim\Http\Response;
use App\Service\PreStudentService;

// Routes
// Define named route
$app->get('/hello/{name}', function ($request, $response, $args) {
    return $this->view->render($response, 'profile.html', [
        'name' => $args['name']
    ]);
})->setName('profile');

// Define named route
$app->get('/', function ($request, $response, $args) {
    return $this->view->render($response, 'home.html', [
        'name' => $args['name']
    ]);
})->setName('home');

// Define named route
$app->get('/ajuda', function ($request, $response, $args) {
    return $this->view->render($response, 'help.html', [
        'name' => $args['name']
    ]);
})->setName('help');

// Proces de matrícula
// Pas 1: Avis i documentació
$app->get('/matricula', function ($request, $response, $args) {
    return $this->view->render($response, 'matricula-0.html', [
        'name' => $args['name']
    ]);
})->setName('matricula-0');

// Pas 2: Selecció de curs
$app->post('/matricula/seleccio-curs', function ($request, $response, $args) {
    return $this->view->render($response, 'matricula-1.html', [
        'name' => $args['name']
    ]);
})->setName('matricula-1');

// Pas 3: Dades personals
$app->post('/matricula/dades-personals', function ($request, $response, $args) {


$courses = [["id" => 1, "name" => "Muntatge i manteniment d’equips", "nufs" => 6, "code" => "M01_MME"], 
            ["id" => 2, "name" => "Sistemes operatius monolloc", "nufs" => 3, "code" => "M02_SOM"], 
            ["id" => 3, "name" => "Aplicacions ofimàtiques", "nufs" => 6, "code" => "M03_APO"],
            ["id" => 4, "name" => "Sistemes operatius en xarxa", "nufs" => 4, "code" => "M04_SOX"],
            ["id" => 5, "name" => "Xarxes locals", "nufs" => 3, "code" => "M05_XAL"],
            ["id" => 6, "name" => "Seguretat informàtica", "nufs" => 5, "code" => "M06_SEG"],
            ["id" => 7, "name" => "Serveis de xarxa", "nufs" => 4, "code" => "M07_SEX"],
            ["id" => 8, "name" => "Aplicacions web", "nufs" => 5, "code" => "M08_APW"],
            ["id" => 9, "name" => "FOL", "nufs" => 2, "code" => "M09_FOL"],
            ["id" => 10, "name" => "Empresa i iniciativa empresarial", "nufs" => 1, "code" => "M10_EIE"],
            ["id" => 11, "name" => "Crèdit de síntesi", "nufs" => 1, "code" => "M11_CS"],
            ["id" => 12, "name" => "Anglès tècnic", "nufs" => 1, "code" => "M12_ANG"],
            ["id" => 13, "name" => "Formació en centres de treball", "nufs" => 1, "code" => "M13_FCT"]];

$primer[] = $courses[0];
$primer[] = $courses[1];
$primer[] = $courses[2];
$primer[] = $courses[4];
$primer[] = $courses[8];
$primer[] = $courses[11];
$segon[] = $courses[3];
$segon[] = $courses[5];
$segon[] = $courses[6];
$segon[] = $courses[7];
$segon[] = $courses[9];
$segon[] = $courses[10];
$segon[] = $courses[12];

    return $this->view->render($response, 'matricula-2.html', [
        'name' => $args['name'],
        'course' => $request->getParsedBody()['course'],
        'courses' => [["name" => "Primer curs", "modules" => $primer], ["name" => "Segon curs", "modules" => $segon]]
    ]);
})->setName('matricula-2');

// Pas 4: Dades del curs
$app->post('/matricula/dades-curs', function ($request, $response, $args) {


$courses = [["id" => 1, "name" => "Muntatge i manteniment d’equips", "nufs" => 6, "code" => "M01_MME"], 
            ["id" => 2, "name" => "Sistemes operatius monolloc", "nufs" => 3, "code" => "M02_SOM"], 
            ["id" => 3, "name" => "Aplicacions ofimàtiques", "nufs" => 6, "code" => "M03_APO"],
            ["id" => 4, "name" => "Sistemes operatius en xarxa", "nufs" => 4, "code" => "M04_SOX"],
            ["id" => 5, "name" => "Xarxes locals", "nufs" => 3, "code" => "M05_XAL"],
            ["id" => 6, "name" => "Seguretat informàtica", "nufs" => 5, "code" => "M06_SEG"],
            ["id" => 7, "name" => "Serveis de xarxa", "nufs" => 4, "code" => "M07_SEX"],
            ["id" => 8, "name" => "Aplicacions web", "nufs" => 5, "code" => "M08_APW"],
            ["id" => 9, "name" => "FOL", "nufs" => 2, "code" => "M09_FOL"],
            ["id" => 10, "name" => "Empresa i iniciativa empresarial", "nufs" => 1, "code" => "M10_EIE"],
            ["id" => 11, "name" => "Crèdit de síntesi", "nufs" => 1, "code" => "M11_CS"],
            ["id" => 12, "name" => "Anglès tècnic", "nufs" => 1, "code" => "M12_ANG"],
            ["id" => 13, "name" => "Formació en centres de treball", "nufs" => 1, "code" => "M13_FCT"]];

$primer[] = $courses[0];
$primer[] = $courses[1];
$primer[] = $courses[2];
$primer[] = $courses[4];
$primer[] = $courses[8];
$primer[] = $courses[11];
$segon[] = $courses[3];
$segon[] = $courses[5];
$segon[] = $courses[6];
$segon[] = $courses[7];
$segon[] = $courses[9];
$segon[] = $courses[10];
$segon[] = $courses[12];

    return $this->view->render($response, 'matricula-3.html', [
        'name' => $args['name'],
        'course' => $request->getParsedBody()['course'],
        'year' => $request->getParsedBody()['year'],
        'courses' => [["name" => "Primer curs", "modules" => $primer], ["name" => "Segon curs", "modules" => $segon]]
    ]);
})->setName('matricula-3');



// Define named route
$app->get('/smx', function ($request, $response, $args) {

$courses = [["id" => 1, "name" => "Muntatge i manteniment d’equips", "nufs" => 6, "code" => "M01_MME"], 
            ["id" => 2, "name" => "Sistemes operatius monolloc", "nufs" => 3, "code" => "M02_SOM"], 
            ["id" => 3, "name" => "Aplicacions ofimàtiques", "nufs" => 6, "code" => "M03_APO"],
            ["id" => 4, "name" => "Sistemes operatius en xarxa", "nufs" => 4, "code" => "M04_SOX"],
            ["id" => 5, "name" => "Xarxes locals", "nufs" => 3, "code" => "M05_XAL"],
            ["id" => 6, "name" => "Seguretat informàtica", "nufs" => 5, "code" => "M06_SEG"],
            ["id" => 7, "name" => "Serveis de xarxa", "nufs" => 4, "code" => "M07_SEX"],
            ["id" => 8, "name" => "Aplicacions web", "nufs" => 5, "code" => "M08_APW"],
            ["id" => 9, "name" => "FOL", "nufs" => 2, "code" => "M09_FOL"],
            ["id" => 10, "name" => "Empresa i iniciativa empresarial", "nufs" => 1, "code" => "M10_EIE"],
            ["id" => 11, "name" => "Crèdit de síntesi", "nufs" => 1, "code" => "M11_CS"],
            ["id" => 12, "name" => "Anglès tècnic", "nufs" => 1, "code" => "M12_ANG"],
            ["id" => 13, "name" => "Formació en centres de treball", "nufs" => 1, "code" => "M13_FCT"]];

$primer[] = $courses[0];
$primer[] = $courses[1];
$primer[] = $courses[2];
$primer[] = $courses[4];
$primer[] = $courses[8];
$primer[] = $courses[11];
$segon[] = $courses[3];
$segon[] = $courses[5];
$segon[] = $courses[6];
$segon[] = $courses[7];
$segon[] = $courses[9];
$segon[] = $courses[10];
$segon[] = $courses[12];

    return $this->view->render($response, 'smx.html', [
        'name' => $args['name'],
        'courses' => [["name" => "Primer curs", "modules" => $primer], ["name" => "Segon curs", "modules" => $segon]]
    ]);
})->setName('smx');


// Define named route
$app->get('/fp', function ($request, $response, $args) {

$courses = [["id" => 1, "name" => "Muntatge i manteniment d’equips"], 
            ["id" => 2, "name" => "Sistemes operatius monolloc"], 
            ["id" => 3, "name" => "Aplicacions ofimàtiques"],
            ["id" => 4, "name" => "Sistemes operatius en xarxa"],
            ["id" => 5, "name" => "Xarxes locals"],
            ["id" => 6, "name" => "Seguretat informàtica"],
            ["id" => 7, "name" => "Serveis de xarxa"],
            ["id" => 8, "name" => "Aplicacions web"],
            ["id" => 9, "name" => "FOL"],
            ["id" => 10, "name" => "Empresa i iniciativa emprenedora"],
            ["id" => 11, "name" => "Anglès tècnic"]];

    return $this->view->render($response, 'fp-course-uf-selection-form.html', [
        'name' => $args['name'],
        'courses' => $courses
    ]);
})->setName('fp');

// Define named route
$app->get('/pre', function ($request, $response, $args) {
    return $this->view->render($response, 'pre-enrollment.html', [
        'name' => $args['name']
    ]);
})->setName('pre-enrollment');

// Define named route
$app->get('/pre-new', function ($request, $response, $args) {
    return $this->view->render($response, 'pre-enrollment-new-student.html', [
        'name' => $args['name']
    ]);
})->setName('pre-enrollment-new-student');

// Define named route
$app->get('/pre-old', function ($request, $response, $args) {
    return $this->view->render($response, 'pre-enrollment-old-student.html', [
        'name' => $args['name']
    ]);
})->setName('pre-enrollment-old-student');

// Define named route
$app->post('/pre-old', function ($request, $response, $args) {

    $oldStudent = $this->PreStudentService->getOldStudent($request->getParsedBody());

    if ($oldStudent) { // Success - Generate random access
        $this->PreStudentService->sendEmailActivation($oldStudent);
        return $this->view->render($response, 'pre-enrollment-old-student-success.html', [
            'name' => $args['name'],
            'info' => "Informació recuperada, si trobes alguna errada en les teves dades acadèmiques consulta al personal de secretaria abans de continuar."
        ]);

        return;
    } else { // No student found
        return $this->view->render($response, 'pre-enrollment-old-student-failed.html', [
            'name' => $args['name'],
            'error' => "No s'ha trobat cap usuari amb aquest correu."
        ]);
    }

});



// Define named route
$app->post('/pre', function ($request, $response, $args) {
    $nim = $this->PreStudentService->createPreStudent($request->getParsedBody());

    return $this->view->render($response, 'pre-enrollment-success.html', [
        'nim' => $nim
    ]);
});

 //Define named route
 $app->get('/enrollment', function ($request, $response, $args) {
    return $this->view->render($response, 'enrollment.html', [
        'name' => $args['name']
    ]);
 })->setName('enrollment');


 // Define named route
$app->get('/cover', function ($request, $response, $args) {
    return $this->view->render($response, 'cover.html', [
        'name' => $args['name']
    ]);
})->setName('cover');

// Define named route
$app->get('/jumbotron', function ($request, $response, $args) {
    return $this->view->render($response, 'jumbotron.html', [
        'name' => $args['name']
    ]);
})->setName('jumbotron');

// Render from string
$app->get('/hi/{name}', function ($request, $response, $args) {
    $str = $this->view->fetchFromString('<p>Hi, my name is {{ name }}.</p>', [
        'name' => $args['name']
    ]);
    $response->getBody()->write($str);
    return $response;
});

$app->get('/examples', function ($request, $response, $args) {

    $sql = "SELECT * FROM example";
    $condition = "1";

    try {
        //$db = MyPDO::getConnection();
        $stmt = $this->db->prepare($sql);
       // $stmt->bindParam("condition", $condition);
        $stmt->execute();
        $examples = $stmt->fetchAll(PDO::FETCH_OBJ);
        $db = null;
        $response->getBody()->write(json_encode( $examples ));
    } catch(PDOException $e) {
        $error = array("error"=> array("text"=>$e->getMessage()));
        $response->getBody()->write(json_encode( $error ));
    }

});

/*
$app->get('/[{name}]', function (Request $request, Response $response, array $args) {
    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");

    // Render index view
    return $this->renderer->render($response, 'index.phtml', $args);
}); */
