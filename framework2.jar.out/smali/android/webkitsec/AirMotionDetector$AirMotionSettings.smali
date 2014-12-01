.class Landroid/webkitsec/AirMotionDetector$AirMotionSettings;
.super Ljava/lang/Object;
.source "AirMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/AirMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirMotionSettings"
.end annotation


# instance fields
.field private mMotionType:I

.field private mSettingsContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Landroid/webkitsec/AirMotionDetector;


# direct methods
.method public constructor <init>(Landroid/webkitsec/AirMotionDetector;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->this$0:Landroid/webkitsec/AirMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    iput p3, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mMotionType:I

    return-void
.end method


# virtual methods
.method public checkAIRPINEnalbed()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_clip"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    const-string v1, "AirMotionDetector"

    const-string v2, " Air Pin Enables  in Settings"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v0, "AirMotionDetector"

    const-string v2, " Air Pin disables in Settings"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public checkAirMotionEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mMotionType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->checkAirScrollEnalbed()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->checkAIRPINEnalbed()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkAirScrollEnalbed()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_scroll"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_scroll_web_page"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
