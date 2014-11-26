.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;
.super Landroid/os/Handler;
.source "KeyguardMagazineCardMainView.java"


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

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # invokes: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->addCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$100(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # invokes: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->removeCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # invokes: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->updateCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$300(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
