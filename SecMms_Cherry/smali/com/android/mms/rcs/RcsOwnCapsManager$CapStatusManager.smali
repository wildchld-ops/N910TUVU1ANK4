.class public Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;
.super Ljava/lang/Object;
.source "RcsOwnCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsOwnCapsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapStatusManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager$FtStateListener;
    }
.end annotation


# static fields
.field private static sFtStateListers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager$FtStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sRcsOwnManager:Lcom/android/mms/rcs/RcsOwnCapsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sFtStateListers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/rcs/RcsOwnCapsManager;)V
    .locals 0
    .param p1    # Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sRcsOwnManager:Lcom/android/mms/rcs/RcsOwnCapsManager;

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->notiftStateListeners(Z)V

    return-void
.end method

.method private notiftStateListeners(Z)V
    .locals 3
    .param p1    # Z

    sget-object v2, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sFtStateListers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager$FtStateListener;

    invoke-interface {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager$FtStateListener;->onChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public registerFtStateListener(Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager$FtStateListener;)V
    .locals 3
    .param p1    # Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager$FtStateListener;

    const-string v0, "Mms/RcsOwnCapsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerFtStateListener ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sFtStateListers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sFtStateListers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sFtStateListers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Mms/RcsOwnCapsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add listener +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sRcsOwnManager:Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsOwnCapsManager;->isEnableRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sRcsOwnManager:Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsOwnCapsManager;->isEnableRcsService()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->notiftStateListeners(Z)V

    :cond_0
    return-void
.end method

.method public unRegisterFtStateListener(Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager$FtStateListener;)V
    .locals 3
    .param p1    # Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager$FtStateListener;

    sget-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sFtStateListers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/RcsOwnCapsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove listener +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sFtStateListers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "Mms/RcsOwnCapsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " unRegisterFtStateListener ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->sFtStateListers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
