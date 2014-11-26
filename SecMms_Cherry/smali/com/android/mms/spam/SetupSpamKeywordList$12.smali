.class Lcom/android/mms/spam/SetupSpamKeywordList$12;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;->softkeyRightRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # invokes: Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1500(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    return-void
.end method
