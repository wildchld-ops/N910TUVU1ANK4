.class Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
.super Ljava/lang/Object;
.source "ContextAwareLanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContextAwareLanguageDataStructure"
.end annotation


# instance fields
.field private final INVAILD_KEY:I

.field private mCurPreferredLanguageList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIsAddSubItem:Z

.field private mKey:Ljava/lang/String;

.field private mPreferredLanguageListSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;",
            ">;"
        }
    .end annotation
.end field

.field private mSubKey:I

.field private mTimestamp:J

.field private mUseSubItem:Z

.field final synthetic this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/lang/String;IIZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->INVAILD_KEY:I

    iput v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIndex:I

    iput-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mKey:Ljava/lang/String;

    iput v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mSubKey:I

    iput-boolean v4, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    iput-boolean v4, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIsAddSubItem:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mTimestamp:J

    iput-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    iput-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    iput p2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIndex:I

    iput-object p3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mKey:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mTimestamp:J

    if-eqz p6, :cond_0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    invoke-virtual {p0, p4, p5}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->makeSubLanguageItem(II)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    const/4 v3, 0x1

    invoke-direct {v2, p1, p5, v3}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IB)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    invoke-direct {v2, p1, v4, v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IB)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/lang/String;Ljava/lang/Long;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->INVAILD_KEY:I

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIndex:I

    iput-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mKey:Ljava/lang/String;

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mSubKey:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIsAddSubItem:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mTimestamp:J

    iput-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    iput p2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIndex:I

    iput-object p3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mKey:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mTimestamp:J

    iput-object p5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    return-void
.end method

.method public constructor <init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/lang/String;Ljava/lang/Long;Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->INVAILD_KEY:I

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIndex:I

    iput-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mKey:Ljava/lang/String;

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mSubKey:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIsAddSubItem:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mTimestamp:J

    iput-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    iput-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    iput p2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIndex:I

    iput-object p3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mKey:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mTimestamp:J

    iput-object p5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    return-void
.end method

.method private increaseLanguagePreference(II)V
    .locals 7

    const/4 v1, 0x0

    if-gez p1, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    iget-byte v5, v4, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    if-nez v5, :cond_0

    iput p2, v4, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    const/4 v5, 0x2

    iput-byte v5, v4, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    iget-byte v5, v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    if-lez v5, :cond_1

    iget-byte v5, v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mTimestamp:J

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    # getter for: Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mComparator:Ljava/util/Comparator;
    invoke-static {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->access$500(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    iget v6, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIndex:I

    # setter for: Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    invoke-static {v5, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->access$402(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;I)I

    return-void

    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    iget-byte v5, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    const/4 v6, 0x3

    if-ge v5, v6, :cond_6

    iget-byte v5, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    iget v5, v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    if-eq v5, p2, :cond_7

    iget-byte v5, v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    if-lez v5, :cond_7

    iget-byte v5, v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    const/4 v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public clearIsAddNewSubItem()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIsAddSubItem:Z

    return-void
.end method

.method public findSubItem(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    iget-boolean v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    :cond_0
    iput v4, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mSubKey:I

    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mSubKey:I

    if-eq v3, p1, :cond_1

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    iput v4, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mSubKey:I

    iget-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->getPreferredLanguageList()Ljava/util/LinkedList;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    if-eqz v3, :cond_4

    iput p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mSubKey:I

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public getBestPreferredLanguageID(I)I
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    iget v1, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    if-eqz v1, :cond_0

    iget-byte v1, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iget p1, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    :cond_0
    return p1
.end method

.method public getCurrentPreferredLanguageList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getDataSize()I
    .locals 3

    iget-boolean v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    # invokes: Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I
    invoke-static {v0, v1, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->access$300(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IZ)I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xe

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    # invokes: Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I
    invoke-static {v0, v1, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->access$300(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IZ)I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xe

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIndex:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredLanguageListSet()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPreferredLanguageListSet(I)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSubKey()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mSubKey:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isAddNewSubItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIsAddSubItem:Z

    return v0
.end method

.method public isUseSubItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mUseSubItem:Z

    return v0
.end method

.method public makeSubLanguageItem(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    iget-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {v2, v3, p2, v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IB)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    iget-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {v2, v3, v4, v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IB)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    new-instance v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;

    iget-object v4, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {v3, v4, p1, v1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/util/LinkedList;)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mPreferredLanguageListSet:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v5, :cond_1

    iput-boolean v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIsAddSubItem:Z

    :cond_1
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIndex:I

    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mTimestamp:J

    return-void
.end method

.method public updatePreferredLanguage(I)V
    .locals 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mCurPreferredLanguageList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    iget v3, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    if-ne v3, p1, :cond_1

    move v2, v1

    :cond_0
    :goto_1
    invoke-direct {p0, v2, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->increaseLanguagePreference(II)V

    return-void

    :cond_1
    iget v3, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    if-nez v3, :cond_2

    iput p1, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    const/4 v3, 0x0

    iput-byte v3, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    move v2, v1

    iget-object v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    iget v4, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->mIndex:I

    # setter for: Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    invoke-static {v3, v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->access$402(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;I)I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
