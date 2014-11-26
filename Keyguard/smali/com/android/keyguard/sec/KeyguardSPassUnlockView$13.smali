.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cardAdded(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 1
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->adjustMagazineCardLayout()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    return-void
.end method

.method public cardRemoved(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 1
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->adjustMagazineCardLayout()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    return-void
.end method

.method public cardUpdated(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 0
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    return-void
.end method
