.class Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$4;
.super Ljava/lang/Object;
.source "HeaderWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->showMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mItemClickListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mItemClickListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method
