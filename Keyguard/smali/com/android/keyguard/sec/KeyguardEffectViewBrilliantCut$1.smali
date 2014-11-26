.class Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewBrilliantCut.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->makeSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2
    .param p1    # Landroid/media/SoundPool;
    .param p2    # I
    .param p3    # I

    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "BrilliantRing sound : onLoadComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isLoadCompleted:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;Z)Z

    return-void
.end method
