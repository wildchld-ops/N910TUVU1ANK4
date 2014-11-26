.class Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field body:Landroid/widget/TextView;

.field check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field date:Landroid/widget/TextView;

.field from:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

.field type:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->this$1:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
