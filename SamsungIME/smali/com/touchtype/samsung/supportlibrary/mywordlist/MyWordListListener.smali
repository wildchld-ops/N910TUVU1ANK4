.class public interface abstract Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAddingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
.end method

.method public abstract onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
.end method

.method public abstract onListingComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRemovingComplete(Z)V
.end method

.method public abstract onResortingComplete()V
.end method
