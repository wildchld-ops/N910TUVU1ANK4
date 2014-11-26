.class Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;
.super Ljava/lang/Object;
.source "PrioritySenderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Row"
.end annotation


# instance fields
.field private mId:J

.field private mPriority:J

.field final synthetic this$0:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/prioritysender/PrioritySenderListAdapter;JJ)V
    .locals 0
    .param p2    # J
    .param p4    # J

    iput-object p1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;->this$0:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;->mId:J

    iput-wide p4, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;->mPriority:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;)J
    .locals 2
    .param p0    # Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;

    iget-wide v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;->mPriority:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;)J
    .locals 2
    .param p0    # Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;

    iget-wide v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;->mId:J

    return-wide v0
.end method
