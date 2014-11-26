.class Landroid/hardware/motion/MotionRecognitionFlipCover$3;
.super Ljava/lang/Object;
.source "MotionRecognitionFlipCover.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionFlipCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionFlipCover;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
    .param p2    # I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1    # Landroid/hardware/SensorEvent;

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    float-to-int v2, v2

    # setter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostProxVal:I
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$502(Landroid/hardware/motion/MotionRecognitionFlipCover;I)I

    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prox val = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostProxVal:I
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$500(Landroid/hardware/motion/MotionRecognitionFlipCover;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostProxVal:I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$500(Landroid/hardware/motion/MotionRecognitionFlipCover;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MotionRecognitionService"

    const-string v2, "Prox [ close ]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # setter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxClosed:Z
    invoke-static {v1, v5}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$402(Landroid/hardware/motion/MotionRecognitionFlipCover;Z)Z

    invoke-virtual {p0, v4}, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->setInputKeys(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "MotionRecognitionService"

    const-string v2, "Prox [ far ]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxEnabled:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$100(Landroid/hardware/motion/MotionRecognitionFlipCover;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxClosed:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$400(Landroid/hardware/motion/MotionRecognitionFlipCover;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mIsLightSensorExist:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$600(Landroid/hardware/motion/MotionRecognitionFlipCover;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$300(Landroid/hardware/motion/MotionRecognitionFlipCover;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorProxListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$200(Landroid/hardware/motion/MotionRecognitionFlipCover;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # setter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxEnabled:Z
    invoke-static {v1, v4}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$102(Landroid/hardware/motion/MotionRecognitionFlipCover;Z)Z

    const-string v1, "MotionRecognitionService"

    const-string v2, " Proximity unReg "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v5}, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->setInputKeys(Z)V

    goto :goto_0
.end method

.method public setInputKeys(Z)V
    .locals 10
    .param p1    # Z

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    const-string v7, "/sys/class/sec/tsp/cmd"

    invoke-direct {v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v5

    :goto_0
    if-nez v4, :cond_2

    :try_start_1
    const-string v7, "MotionRecognitionService"

    const-string v8, "Output file is null!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/class/sec/tsp/cmd_result"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    :goto_2
    if-nez v2, :cond_4

    :try_start_3
    const-string v7, "MotionRecognitionService"

    const-string v8, "Input file is null!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string v7, "MotionRecognitionService"

    const-string v8, "File not found!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_4
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_5
    const-string v7, "MotionRecognitionService"

    const-string v8, "File write fail!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    if-nez p1, :cond_3

    :try_start_6
    const-string v7, "flip_cover_enable,1"

    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v7, "MotionRecognitionService"

    const-string v8, "Disable Touch flip_cover_enable, 1"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    :cond_3
    const-string v7, "flip_cover_enable,0"

    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v7, "MotionRecognitionService"

    const-string v8, "flip_cover_enable, 0"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v7, "MotionRecognitionService"

    const-string v8, "File not found!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Read cmd_result"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
