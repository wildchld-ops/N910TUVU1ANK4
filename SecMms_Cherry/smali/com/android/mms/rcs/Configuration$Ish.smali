.class public Lcom/android/mms/rcs/Configuration$Ish;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ish"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxFileSize()I
    .locals 3

    const-string v1, "Mms/Configuration"

    const-string v2, "Ish.getMaxFileSize()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "root/application/1/ext/maxsizeimageshare"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static getWarnFileSize()I
    .locals 3

    const-string v1, "Mms/Configuration"

    const-string v2, "Ish.getWarnFileSize()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "root/application/1/other/warnsizeimageshare"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
