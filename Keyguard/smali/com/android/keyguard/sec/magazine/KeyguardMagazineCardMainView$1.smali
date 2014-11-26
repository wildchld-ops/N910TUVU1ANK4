.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardMainView.java"

# interfaces
.implements Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cardAdded(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 3
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cardRemoved(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 3
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cardUpdated(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 3
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
