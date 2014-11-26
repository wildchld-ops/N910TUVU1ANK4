.class Lcom/android/settings/ASensorSettings$handlersensor;
.super Ljava/lang/Object;
.source "ASensorSettings.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ASensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ASensorSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ASensorSettings$handlersensor;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/ASensorSettings;
    .param p2    # Lcom/android/settings/ASensorSettings$1;

    invoke-direct {p0, p1}, Lcom/android/settings/ASensorSettings$handlersensor;-><init>(Lcom/android/settings/ASensorSettings;)V

    return-void
.end method

.method private changeAcceleroMeter(Landroid/hardware/Sensor;[F)V
    .locals 8
    .param p1    # Landroid/hardware/Sensor;
    .param p2    # [F

    const/high16 v7, 0x40000000

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x3

    new-array v0, v2, [F

    const/high16 v1, 0x41200000

    aget v2, p2, v4

    cmpg-float v2, v2, v6

    if-gez v2, :cond_0

    aget v2, p2, v4

    aget v3, p2, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    neg-float v2, v2

    aput v2, v0, v4

    :goto_0
    aget v2, p2, v5

    cmpg-float v2, v2, v6

    if-gez v2, :cond_1

    aget v2, p2, v5

    aget v3, p2, v5

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    neg-float v2, v2

    aput v2, v0, v5

    :goto_1
    # getter for: Lcom/android/settings/ASensorSettings;->sampleCount:I
    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$300()I

    move-result v2

    if-nez v2, :cond_2

    aget v2, v0, v4

    sput v2, Lcom/android/settings/ASensorSettings;->sampleData_x:F

    aget v2, v0, v5

    sput v2, Lcom/android/settings/ASensorSettings;->sampleData_y:F

    # operator++ for: Lcom/android/settings/ASensorSettings;->sampleCount:I
    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$308()I

    :goto_2
    return-void

    :cond_0
    aget v2, p2, v4

    aget v3, p2, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    aput v2, v0, v4

    goto :goto_0

    :cond_1
    aget v2, p2, v5

    aget v3, p2, v5

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    aput v2, v0, v5

    goto :goto_1

    :cond_2
    # ++operator for: Lcom/android/settings/ASensorSettings;->sampleCount:I
    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$304()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_3

    sget v2, Lcom/android/settings/ASensorSettings;->sampleData_x:F

    aget v3, v0, v4

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    sput v2, Lcom/android/settings/ASensorSettings;->sampleData_x:F

    sget v2, Lcom/android/settings/ASensorSettings;->sampleData_y:F

    aget v3, v0, v5

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    sput v2, Lcom/android/settings/ASensorSettings;->sampleData_y:F

    goto :goto_2

    :cond_3
    # setter for: Lcom/android/settings/ASensorSettings;->sampleCount:I
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$302(I)I

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$handlersensor;->this$0:Lcom/android/settings/ASensorSettings;

    # getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/ASensorSettings;->sampleData_x:F

    sget v4, Lcom/android/settings/ASensorSettings;->sampleData_y:F

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->setPoint(FF)V

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$handlersensor;->this$0:Lcom/android/settings/ASensorSettings;

    # getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_2
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1    # Landroid/hardware/Sensor;
    .param p2    # I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1    # Landroid/hardware/SensorEvent;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ASensorSettings$handlersensor;->changeAcceleroMeter(Landroid/hardware/Sensor;[F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
