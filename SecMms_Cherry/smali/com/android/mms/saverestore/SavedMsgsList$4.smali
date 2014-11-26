.class Lcom/android/mms/saverestore/SavedMsgsList$4;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnTwMultiSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SavedMsgsList;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SavedMsgsList;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SavedMsgsList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList$4;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTwMultiSelectStart(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method public OnTwMultiSelectStop(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method public onTwMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 0
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .param p6    # Z
    .param p7    # Z
    .param p8    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    return-void
.end method
