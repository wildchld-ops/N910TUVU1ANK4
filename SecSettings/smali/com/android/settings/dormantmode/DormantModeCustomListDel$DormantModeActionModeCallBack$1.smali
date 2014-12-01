.class Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack$1;
.super Ljava/lang/Object;
.source "DormantModeCustomListDel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack$1;->this$1:Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack$1;->this$1:Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomListDel;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->customlistdelete()V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack$1;->this$1:Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;->stopMultiActionMode()V

    return-void
.end method
