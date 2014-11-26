.class Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;
.super Landroid/content/pm/IPersonaObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field private mContainerId:I

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .locals 1
    .param p2    # I

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPersonaObserver$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->mContainerId:I

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->mContainerId:I

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I
    .locals 1
    .param p0    # Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iget v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->mContainerId:I

    return v0
.end method


# virtual methods
.method public onFirstBoot()V
    .locals 2

    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onFirstBoot()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInit()V
    .locals 2

    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onInit()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .locals 2
    .param p1    # Z

    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onKeyGuardStateChanged()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPersonaSwitch()V
    .locals 2

    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onPersonaSwitch()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionExpired()V
    .locals 2

    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStateChange(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persona.onStateChange: oldstate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2200(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
