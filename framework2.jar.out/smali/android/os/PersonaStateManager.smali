.class public Landroid/os/PersonaStateManager;
.super Ljava/lang/Object;
.source "PersonaStateManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PersonaStateManager"


# instance fields
.field private context:Landroid/content/Context;

.field private service:Landroid/content/pm/IPersonaStateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPersonaStateHandler;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/pm/IPersonaStateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PersonaStateManager;->context:Landroid/content/Context;

    iput-object p2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    return-void
.end method


# virtual methods
.method public mapToNormalizedState(I)I
    .locals 3
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    if-nez v1, :cond_0

    :goto_0
    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaStateHandler;->mapToNormalizedState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PersonaStateManager"

    const-string/jumbo v2, "mapToNormalizedState problem"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postEvent(ILandroid/content/pm/PersonaEvent;)I
    .locals 4
    .param p1    # I
    .param p2    # Landroid/content/pm/PersonaEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPersonaStateHandler;->postEventForPersona(ILandroid/content/pm/PersonaEvent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PersonaStateManager"

    const-string/jumbo v3, "postEvent problem"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postEvent(Landroid/content/pm/PersonaEvent;)I
    .locals 4
    .param p1    # Landroid/content/pm/PersonaEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    invoke-interface {v2, p1}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PersonaStateManager"

    const-string/jumbo v3, "postEvent problem"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
