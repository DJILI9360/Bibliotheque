<?php

namespace App\Entity;

use App\Repository\BookRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: BookRepository::class)]
class Book
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 255)]
    private $title;

    #[ORM\Column(type: 'string', length: 255)]
    private $kind;

    #[ORM\Column(type: 'date')]
    private $publishingDate;

    #[ORM\Column(type: 'string', length: 255, nullable: true)]
    private $attach;

    #[ORM\Column(type: 'string', length: 255, nullable: true)]
    private $remark;

    #[ORM\Column(type: 'float', nullable: true)]
    private $note;

    #[ORM\ManyToOne(targetEntity: Bibliotheque::class, inversedBy: 'books')]
    #[ORM\JoinColumn(nullable: false)]
    private $bibliotheque;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getKind(): ?string
    {
        return $this->kind;
    }

    public function setKind(string $kind): self
    {
        $this->kind = $kind;

        return $this;
    }

    public function getPublishingDate(): ?\DateTimeInterface
    {
        return $this->publishingDate;
    }

    public function setPublishingDate(\DateTimeInterface $publishingDate): self
    {
        $this->publishingDate = $publishingDate;

        return $this;
    }

    public function getAttach(): ?string
    {
        return $this->attach;
    }

    public function setAttach(?string $attach): self
    {
        $this->attach = $attach;

        return $this;
    }

    public function getRemark(): ?string
    {
        return $this->remark;
    }

    public function setRemark(?string $remark): self
    {
        $this->remark = $remark;

        return $this;
    }

    public function getNote(): ?float
    {
        return $this->note;
    }

    public function setNote(?float $note): self
    {
        $this->note = $note;

        return $this;
    }

    public function getBibliotheque(): ?bibliotheque
    {
        return $this->bibliotheque;
    }

    public function setBibliotheque(?bibliotheque $bibliotheque): self
    {
        $this->bibliotheque = $bibliotheque;

        return $this;
    }
}
