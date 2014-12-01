.class Lcom/android/mms/spam/SetupSpamKeywordList$2;
.super Landroid/database/ContentObserver;
.source "SetupSpamKeywordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$2;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$2;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$102(Lcom/android/mms/spam/SetupSpamKeywordList;Z)Z

    return-void
.end method
