.class Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick$1;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick;


# direct methods
.method constructor <init>(Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick$1;->this$1:Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick$1;->this$1:Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick;

    iget-object v0, v0, Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # invokes: Lcom/android/mms/oem/AutoSendingTestActivity;->startSendMessage()V
    invoke-static {v0}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$800(Lcom/android/mms/oem/AutoSendingTestActivity;)V

    return-void
.end method
