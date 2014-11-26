.class Lcom/touchtype_fluency/internal/ArraySet$NonEmptySetIterator;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/internal/ArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonEmptySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/touchtype_fluency/internal/ArraySet;


# direct methods
.method public constructor <init>(Lcom/touchtype_fluency/internal/ArraySet;)V
    .locals 1

    iput-object p1, p0, Lcom/touchtype_fluency/internal/ArraySet$NonEmptySetIterator;->this$0:Lcom/touchtype_fluency/internal/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/touchtype_fluency/internal/ArraySet$NonEmptySetIterator;->mIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/touchtype_fluency/internal/ArraySet$NonEmptySetIterator;->mIndex:I

    iget-object v1, p0, Lcom/touchtype_fluency/internal/ArraySet$NonEmptySetIterator;->this$0:Lcom/touchtype_fluency/internal/ArraySet;

    # getter for: Lcom/touchtype_fluency/internal/ArraySet;->mElements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/touchtype_fluency/internal/ArraySet;->access$000(Lcom/touchtype_fluency/internal/ArraySet;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Lcom/touchtype_fluency/internal/ArraySet$NonEmptySetIterator;->mIndex:I

    iget-object v1, p0, Lcom/touchtype_fluency/internal/ArraySet$NonEmptySetIterator;->this$0:Lcom/touchtype_fluency/internal/ArraySet;

    # getter for: Lcom/touchtype_fluency/internal/ArraySet;->mElements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/touchtype_fluency/internal/ArraySet;->access$000(Lcom/touchtype_fluency/internal/ArraySet;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/internal/ArraySet$NonEmptySetIterator;->this$0:Lcom/touchtype_fluency/internal/ArraySet;

    # getter for: Lcom/touchtype_fluency/internal/ArraySet;->mElements:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/touchtype_fluency/internal/ArraySet;->access$000(Lcom/touchtype_fluency/internal/ArraySet;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/touchtype_fluency/internal/ArraySet$NonEmptySetIterator;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/touchtype_fluency/internal/ArraySet$NonEmptySetIterator;->mIndex:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements to return from next()"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove() from an ArraySet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
