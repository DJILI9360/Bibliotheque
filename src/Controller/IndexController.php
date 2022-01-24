<?php

namespace App\Controller;

use App\Entity\Bibliotheque;
use App\Entity\Book;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class IndexController extends AbstractController
{
    #[Route('/index', name: 'index')]
    public function index(EntityManagerInterface $em): Response
    {
        $message = 'Bienvenue dans notre Bibliothèque. CHUUUUUUUUT!';
        $books = $em->getRepository(Book::class)->findAll();

        return $this->render('index/index.html.twig', [
            'message' => $message,
            'book' => $books,
        ]);
    }
}
