.class public interface abstract Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
.super Ljava/lang/Object;
.source "Xt9DBController.java"


# virtual methods
.method public abstract addAutoSubstitution(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
.end method

.method public abstract addMyWord(Ljava/lang/CharSequence;)I
.end method

.method public abstract convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C
.end method

.method public abstract convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S
.end method

.method public abstract convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;
.end method

.method public abstract convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;
.end method

.method public abstract deleteAutoSubstitution(Ljava/lang/CharSequence;)I
.end method

.method public abstract deleteMyWord(Ljava/lang/CharSequence;)I
.end method

.method public abstract getAutoSubstitutionsList(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getMyWordsList(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public abstract isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I
.end method

.method public abstract isExistInMyWords([SZ)I
.end method

.method public abstract writeDBdataToFile(B)V
.end method
