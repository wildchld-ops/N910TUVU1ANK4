.class public abstract Lcom/android/mms/ui/Presenter;
.super Ljava/lang/Object;
.source "Presenter.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mModel:Lcom/android/mms/model/Model;

.field protected mView:Lcom/android/mms/ui/ViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/ui/ViewInterface;
    .param p3    # Lcom/android/mms/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    iput-object p3, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    invoke-virtual {v0, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    return-void
.end method


# virtual methods
.method public getModel()Lcom/android/mms/model/Model;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    return-object v0
.end method

.method public getView()Lcom/android/mms/ui/ViewInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    return-object v0
.end method

.method public abstract present()V
.end method

.method public abstract present(Z)V
.end method

.method public setView(Lcom/android/mms/ui/ViewInterface;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/ViewInterface;

    iput-object p1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    return-void
.end method
