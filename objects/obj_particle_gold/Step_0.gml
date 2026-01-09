/// @description Плавность

if (active) {
    gold_duration--;
    if (gold_duration <= 0) {
        active = false;
        // Плавно останавливаем эмиссию
        part_emitter_stream(goldSystem, coinEmitter, goldCoinParticle, 0);
        part_emitter_stream(goldSystem, sparkleEmitter, goldSparkleParticle, 0);
        part_emitter_stream(goldSystem, dustEmitter, goldDustParticle, 0);
        
        // Уничтожаем систему через 3 секунды
        alarm[1] = 180;
    }
}









