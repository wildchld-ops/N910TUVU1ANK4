.class public Lcom/android/server/enterprise/scep/SCEPVersion;
.super Ljava/lang/Object;
.source "SCEPVersion.java"


# static fields
.field private static final KNOX_SCEP_NUMBER:Ljava/lang/String; = "1"

.field private static final KNOX_SCEP_VERSION:Ljava/lang/String; = "2.0.0"

.field private static final PROP_KNOX_SCEP_VERSION:Ljava/lang/String; = "net.knoxscep.version"

.field private static final TAG:Ljava/lang/String; = "SCEPVersion"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.0"

    return-object v0
.end method

.method public static writeVersionInProperties()V
    .locals 3

    const-string v0, "SCEPVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeVersionInProperties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/scep/SCEPVersion;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "net.knoxscep.version"

    invoke-static {}, Lcom/android/server/enterprise/scep/SCEPVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
