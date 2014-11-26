.class Lcom/android/systemui/statusbar/policy/VolumePanel$2;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$2;->this$0:Lcom/android/systemui/statusbar/policy/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$2;->this$0:Lcom/android/systemui/statusbar/policy/VolumePanel;

    # getter for: Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->access$200(Lcom/android/systemui/statusbar/policy/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xc01

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    return-void
.end method
