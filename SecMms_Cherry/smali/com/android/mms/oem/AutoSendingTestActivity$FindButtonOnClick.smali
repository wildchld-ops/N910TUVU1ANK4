.class Lcom/android/mms/oem/AutoSendingTestActivity$FindButtonOnClick;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/oem/AutoSendingTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindButtonOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/oem/AutoSendingTestActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/oem/AutoSendingTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/oem/AutoSendingTestActivity$FindButtonOnClick;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/oem/AutoSendingTestActivity;Lcom/android/mms/oem/AutoSendingTestActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/oem/AutoSendingTestActivity;
    .param p2    # Lcom/android/mms/oem/AutoSendingTestActivity$1;

    invoke-direct {p0, p1}, Lcom/android/mms/oem/AutoSendingTestActivity$FindButtonOnClick;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity$FindButtonOnClick;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # invokes: Lcom/android/mms/oem/AutoSendingTestActivity;->createRecipientDialog()V
    invoke-static {v0}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$1300(Lcom/android/mms/oem/AutoSendingTestActivity;)V

    return-void
.end method
