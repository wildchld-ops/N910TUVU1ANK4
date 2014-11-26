.class Lcom/android/internal/policy/impl/MultiPhoneWindow$5;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->onClickTitleItem(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    return-void
.end method
