<?php
declare(strict_types=1);

class Pizza
{
    private $id;
    private $naam;
    private $prijs;
    private $ingredienten;
    private $allergenen;


    public function __construct(int $id, string $naam, float $prijs, string $ingredienten)
    {
        $this->id = $id;
        $this->naam = $naam;
        $this->prijs = $prijs;
        $this->ingredienten = $ingredienten;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getNaam()
    {
        return $this->naam;
    }

    public function getPrijs()
    {
        return number_format($this->prijs, 2);
    }


    public function getIngdienten()
    {
        return $this->ingredienten;
    }
}
?>