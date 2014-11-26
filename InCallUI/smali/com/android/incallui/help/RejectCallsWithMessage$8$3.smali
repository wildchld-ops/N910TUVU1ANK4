.class Lcom/android/incallui/help/RejectCallsWithMessage$8$3;
.super Ljava/lang/Object;
.source "RejectCallsWithMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/RejectCallsWithMessage$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/help/RejectCallsWithMessage$8;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/RejectCallsWithMessage$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8$3;->this$1:Lcom/android/incallui/help/RejectCallsWithMessage$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8$3;->this$1:Lcom/android/incallui/help/RejectCallsWithMessage$8;

    iget-object v0, v0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1100(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
