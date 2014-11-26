.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1$1;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1$1;->this$2:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1$1;->this$2:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;->this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddy()Z
    invoke-static {v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$300(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    return-void
.end method
