.class Lcom/android/incallui/SocialStatus$1;
.super Ljava/lang/Object;
.source "SocialStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SocialStatus;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SocialStatus;


# direct methods
.method constructor <init>(Lcom/android/incallui/SocialStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SocialStatus$1;->this$0:Lcom/android/incallui/SocialStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SocialStatus$1;->this$0:Lcom/android/incallui/SocialStatus;

    invoke-virtual {v0}, Lcom/android/incallui/SocialStatus;->closeSocialStatus()V

    return-void
.end method
