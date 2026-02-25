from dataclasses import dataclass
import math

@dataclass(frozen=True)
class Ville:
    id: int
    x: float
    y: float

    def distance_avec(self, autre: 'Ville') -> float:
        return math.sqrt((self.x - autre.x)**2 + (self.y - autre.y)**2)