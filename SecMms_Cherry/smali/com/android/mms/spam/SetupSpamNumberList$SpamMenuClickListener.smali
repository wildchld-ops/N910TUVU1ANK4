.class final Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamNumberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpamMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method private constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;Lcom/android/mms/spam/SetupSpamNumberList$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p2    # Lcom/android/mms/spam/SetupSpamNumberList$1;

    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->deleteDialog()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # invokes: Lcom/android/mms/spam/SetupSpamNumberList;->callMatchCriteriaToEditNum()V
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1500(Lcom/android/mms/spam/SetupSpamNumberList;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
