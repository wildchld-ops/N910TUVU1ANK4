.class Lcom/lgu/ims/pal/isim/IsimService$3;
.super Lcom/lgu/ims/pal/isim/IIsimService$Stub;
.source "IsimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgu/ims/pal/isim/IsimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lgu/ims/pal/isim/IsimService;


# direct methods
.method constructor <init>(Lcom/lgu/ims/pal/isim/IsimService;)V
    .locals 0

    iput-object p1, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    invoke-direct {p0}, Lcom/lgu/ims/pal/isim/IIsimService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public GetAuthResponse([B)Z
    .locals 4
    .param p1    # [B

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/lgu/ims/pal/isim/IsimService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->requestAuthForMediaShare(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v2, v2, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "GetAuthResponse..Returning false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public GetHomeDomain()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/lgu/ims/pal/isim/IsimService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v3, v3, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Caught Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public GetPCSCFs()[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Lcom/lgu/ims/pal/isim/IsimService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v0, v10, [Ljava/lang/String;

    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const-string v7, "dummy"

    aput-object v7, v0, v6

    const/4 v6, 0x0

    aget-object v3, v0, v6

    const/4 v6, 0x1

    aget-object v4, v0, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-array v5, v10, [Ljava/lang/String;

    aput-object v3, v5, v8

    aput-object v4, v5, v9

    return-object v5

    :catch_0
    move-exception v1

    iget-object v6, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v6, v6, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Caught Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public GetPrivateUserID()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/lgu/ims/pal/isim/IsimService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v3, v3, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Caught Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public GetPublicUserIDs()[Ljava/lang/String;
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v7, v7, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v8, "GetPublicUserIDs "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Lcom/lgu/ims/pal/isim/IsimService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v0, v12, [Ljava/lang/String;

    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const-string v8, "dummy"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "dummy"

    aput-object v8, v0, v7

    const/4 v7, 0x0

    aget-object v4, v0, v7

    const/4 v7, 0x1

    aget-object v5, v0, v7

    const/4 v7, 0x2

    aget-object v6, v0, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-array v3, v12, [Ljava/lang/String;

    aput-object v4, v3, v9

    aput-object v5, v3, v11

    aput-object v6, v3, v10

    return-object v3

    :catch_0
    move-exception v1

    iget-object v7, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v7, v7, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Caught Exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public Start(Lcom/lgu/ims/pal/isim/IIsimServiceListener;)Z
    .locals 4
    .param p1    # Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v2, v2, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Start()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    # setter for: Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;
    invoke-static {v2, p1}, Lcom/lgu/ims/pal/isim/IsimService;->access$002(Lcom/lgu/ims/pal/isim/IsimService;Lcom/lgu/ims/pal/isim/IIsimServiceListener;)Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    :try_start_0
    iget-object v2, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    # getter for: Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;
    invoke-static {v2}, Lcom/lgu/ims/pal/isim/IsimService;->access$000(Lcom/lgu/ims/pal/isim/IsimService;)Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    # getter for: Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;
    invoke-static {v2}, Lcom/lgu/ims/pal/isim/IsimService;->access$000(Lcom/lgu/ims/pal/isim/IsimService;)Lcom/lgu/ims/pal/isim/IIsimServiceListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/lgu/ims/pal/isim/IIsimServiceListener;->OnStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v1, v1, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Caught Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Terminate()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    const/4 v2, 0x0

    # setter for: Lcom/lgu/ims/pal/isim/IsimService;->mIsimServiceListener:Lcom/lgu/ims/pal/isim/IIsimServiceListener;
    invoke-static {v1, v2}, Lcom/lgu/ims/pal/isim/IsimService;->access$002(Lcom/lgu/ims/pal/isim/IsimService;Lcom/lgu/ims/pal/isim/IIsimServiceListener;)Lcom/lgu/ims/pal/isim/IIsimServiceListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/lgu/ims/pal/isim/IsimService$3;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v1, v1, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Caught Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
