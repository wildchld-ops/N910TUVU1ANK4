.class public abstract Lcom/touchtype/personalizer/Personalizer;
.super Ljava/lang/Object;
.source "Personalizer.java"

# interfaces
.implements Lcom/touchtype/personalizer/PersonalizerInterface;


# static fields
.field public static final API_BUSY:I = 0x2

.field public static final API_FAIL:I = 0x1

.field public static final API_SUCCESS:I = 0x0

.field public static final ID:Ljava/lang/String; = "id"

.field public static final INSTALLER_PACKAGE:Ljava/lang/String; = "packagename"

.field public static final MODELNAME:Ljava/lang/String; = "modelname"

.field public static final PARAMS:Ljava/lang/String; = "params"

.field public static final SERVICEID:Ljava/lang/String; = "serviceid"

.field public static final SERVICENAME:Ljava/lang/String; = "name"

.field public static final SERVICEPATH:Ljava/lang/String; = "path"

.field public static final SERVICE_CONTACTS:I = 0x6

.field public static final SERVICE_DELETE_REMOTE:I = 0x7

.field public static final SERVICE_FACEBOOK:I = 0x1

.field public static final SERVICE_GMAIL:I = 0x2

.field public static final SERVICE_LIST:[I

.field public static final SERVICE_RENREN:I = 0x9

.field public static final SERVICE_RSS:I = 0x4

.field public static final SERVICE_SMS:I = 0x5

.field public static final SERVICE_TWITTER:I = 0x3

.field public static final SERVICE_WEIBO:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Personalizer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

.field private mInstallationId:Ljava/lang/String;

.field protected m_parentContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/touchtype/personalizer/Personalizer;->SERVICE_LIST:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x8
        0x2
        0x3
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/touchtype/personalizer/Personalizer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/touchtype/personalizer/InstallationId;->getId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/Personalizer;->mInstallationId:Ljava/lang/String;

    iget-object v0, p0, Lcom/touchtype/personalizer/Personalizer;->mInstallationId:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method private getDownloadFolder()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/Personalizer;->mCurrentRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/Personalizer;->mCurrentRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizationRequest;->stop()V

    :cond_0
    return-void
.end method

.method public createConfigFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/touchtype/personalizer/Personalizer;->getDownloadFolder()Ljava/io/File;

    move-result-object v3

    const-string v4, ".config"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"models\" : [{\"path\" : \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getModelFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", \"type\" : \"dynamic-term\"}]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteLm()V
    .locals 1

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getDownloadPath()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/Personalizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDownloadPath()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/touchtype/personalizer/Personalizer;->getDownloadFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getModelFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getModelFilename()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getServicePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dynamic.lm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startPersonalization(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const-string v1, "Personalizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting personalization with params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/touchtype/personalizer/Personalizer;->mCurrentRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype/personalizer/Personalizer;->mCurrentRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizationRequest;->stop()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/touchtype/personalizer/Personalizer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    iget-object v2, p0, Lcom/touchtype/personalizer/Personalizer;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "path"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getServicePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "modelname"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getModelFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "serviceid"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/touchtype/personalizer/Personalizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
