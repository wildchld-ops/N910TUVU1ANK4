.class public Lcom/lgu/ims/pal/isim/IsimService;
.super Landroid/app/Service;
.source "IsimService.java"


# instance fields
.field IMS_AUTH_AUTS_RESP:I

.field IMS_AUTH_AUTS_RESP_STR:Ljava/lang/String;

.field IMS_AUTH_NO_ERR:I

.field IMS_AUTH_NO_ERR_STR:Ljava/lang/String;

.field public ISIMDataReceiver:Landroid/content/BroadcastReceiver;

.field private ISIMInterfaceFilter:Landroid/content/IntentFilter;

.field public LOG_TAG:Ljava/lang/String;

.field private final mBinder:Lcom/lgu/ims/pal/isim/IIsimService$Stub;

.field public mHandler:Landroid/os/Handler;

.field private mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "IsimService"

    iput-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/lgu/ims/pal/isim/IsimService$1;

    invoke-direct {v0, p0}, Lcom/lgu/ims/pal/isim/IsimService$1;-><init>(Lcom/lgu/ims/pal/isim/IsimService;)V

    iput-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/lgu/ims/pal/isim/IsimService$2;

    invoke-direct {v0, p0}, Lcom/lgu/ims/pal/isim/IsimService$2;-><init>(Lcom/lgu/ims/pal/isim/IsimService;)V

    iput-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->ISIMDataReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0xdb

    iput v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->IMS_AUTH_NO_ERR:I

    const-string v0, "db"

    iput-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->IMS_AUTH_NO_ERR_STR:Ljava/lang/String;

    const/16 v0, 0xdc

    iput v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->IMS_AUTH_AUTS_RESP:I

    const-string v0, "dc"

    iput-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->IMS_AUTH_AUTS_RESP_STR:Ljava/lang/String;

    new-instance v0, Lcom/lgu/ims/pal/isim/IsimService$3;

    invoke-direct {v0, p0}, Lcom/lgu/ims/pal/isim/IsimService$3;-><init>(Lcom/lgu/ims/pal/isim/IsimService;)V

    iput-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->mBinder:Lcom/lgu/ims/pal/isim/IIsimService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/lgu/ims/pal/isim/IsimService;)Lcom/lgu/ims/pal/isim/IIsimServiceListener;
    .locals 1
    .param p0    # Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lgu/ims/pal/isim/IsimService;Lcom/lgu/ims/pal/isim/IIsimServiceListener;)Lcom/lgu/ims/pal/isim/IIsimServiceListener;
    .locals 0
    .param p0    # Lcom/lgu/ims/pal/isim/IsimService;
    .param p1    # Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    iput-object p1, p0, Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    return-object p1
.end method


# virtual methods
.method handleIsimResponse([B)V
    .locals 17
    .param p1    # [B

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleIsimResponse : AKA Response : %x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleIsimResponse: 1st Byte Response:: 0x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->IMS_AUTH_NO_ERR_STR:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Success response.. Calculating the Res.. CK.. IK"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    aget-byte v14, p1, v14

    and-int/lit16 v9, v14, 0xff

    add-int/lit8 v14, v9, 0x2

    aget-byte v14, p1, v14

    and-int/lit16 v3, v14, 0xff

    add-int v14, v9, v3

    add-int/lit8 v14, v14, 0x3

    aget-byte v14, p1, v14

    and-int/lit16 v6, v14, 0xff

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Res Key Len = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",CK Len = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",IK Len = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",RespArray Length = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v14, v9, v3

    add-int v13, v14, v6

    new-array v10, v9, [B

    new-array v2, v3, [B

    new-array v7, v6, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v9, :cond_0

    add-int/lit8 v14, v5, 0x2

    aget-byte v14, p1, v14

    aput-byte v14, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    add-int/lit8 v14, v9, 0x3

    add-int/2addr v14, v5

    aget-byte v14, p1, v14

    aput-byte v14, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_2

    add-int v14, v9, v3

    add-int/lit8 v14, v14, 0x4

    add-int/2addr v14, v5

    aget-byte v14, p1, v14

    aput-byte v14, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    if-eqz v14, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    invoke-interface {v14, v10, v7, v2}, Lcom/lgu/ims/pal/isim/IIsimServiceListener;->OnAuthResponse([B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    return-void

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Caught Exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->IMS_AUTH_AUTS_RESP_STR:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Error response.. Calling onAUTSFailed with the byte array response"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    if-eqz v14, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/lgu/ims/pal/isim/IIsimServiceListener;->OnAUTSFailed([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Caught Exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_5
    if-eqz v12, :cond_3

    const-string v14, "9862"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v15, "MAC Failure.... Doesnt match with XMAC !!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    if-eqz v14, :cond_3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    invoke-interface {v14}, Lcom/lgu/ims/pal/isim/IIsimServiceListener;->OnMACFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Caught Exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->mBinder:Lcom/lgu/ims/pal/isim/IIsimService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->ISIMInterfaceFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->ISIMInterfaceFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.phone.ISIMAuthParams"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->ISIMDataReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/lgu/ims/pal/isim/IsimService;->ISIMInterfaceFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/lgu/ims/pal/isim/IsimService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1    # Landroid/content/Intent;
    .param p2    # I

    iget-object v0, p0, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
