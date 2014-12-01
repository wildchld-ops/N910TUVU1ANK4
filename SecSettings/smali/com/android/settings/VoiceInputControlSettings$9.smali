.class Lcom/android/settings/VoiceInputControlSettings$9;
.super Ljava/lang/Object;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VoiceInputControlSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
