.class Lcom/android/mms/ui/DrmContentsActivity$DrmItem;
.super Ljava/lang/Object;
.source "DrmContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DrmContentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmItem"
.end annotation


# instance fields
.field private mDrmFileName:Ljava/lang/String;

.field private mDrmFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/DrmContentsActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/DrmContentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->this$0:Lcom/android/mms/ui/DrmContentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/DrmContentsActivity;Lcom/android/mms/ui/DrmContentsActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/DrmContentsActivity;
    .param p2    # Lcom/android/mms/ui/DrmContentsActivity$1;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;-><init>(Lcom/android/mms/ui/DrmContentsActivity;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->mDrmFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->mDrmFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setStringOnItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->mDrmFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->mDrmFileName:Ljava/lang/String;

    return-void
.end method
