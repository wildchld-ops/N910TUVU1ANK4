.class Landroid/media/AudioService$PersonaObserver;
.super Landroid/content/pm/IPersonaObserver$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioService$PersonaObserver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/pm/IPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstBoot()V
    .locals 0

    return-void
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onPersonaSwitch()V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioService$PersonaObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v0}, Landroid/media/AudioService;->access$11100(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getFocusOwner()Landroid/media/FocusRequester;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$PersonaObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v0}, Landroid/media/AudioService;->access$11100(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getFocusOwner()Landroid/media/FocusRequester;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const-string v0, "AudioService"

    const-string v1, "KNOX music playing will be stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/AudioService$PersonaObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v0}, Landroid/media/AudioService;->access$11100(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->discardAudioFocusOwner()V

    :cond_0
    return-void
.end method

.method public onSessionExpired()V
    .locals 0

    return-void
.end method

.method public onStateChange(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method
