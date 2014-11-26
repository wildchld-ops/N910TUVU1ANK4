.class Lcom/android/server/cover/LedCoverController$1;
.super Ljava/lang/Object;
.source "LedCoverController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/LedCoverController;


# direct methods
.method constructor <init>(Lcom/android/server/cover/LedCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/LedCoverController$1;->this$0:Lcom/android/server/cover/LedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/cover/LedCoverController$1;->this$0:Lcom/android/server/cover/LedCoverController;

    # getter for: Lcom/android/server/cover/LedCoverController;->mCoverColor:I
    invoke-static {v2}, Lcom/android/server/cover/LedCoverController;->access$400(Lcom/android/server/cover/LedCoverController;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v1, p0, Lcom/android/server/cover/LedCoverController$1;->this$0:Lcom/android/server/cover/LedCoverController;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    return-void
.end method
