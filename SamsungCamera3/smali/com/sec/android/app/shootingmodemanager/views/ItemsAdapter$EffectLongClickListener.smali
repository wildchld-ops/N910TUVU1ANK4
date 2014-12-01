.class Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectLongClickListener;
.super Ljava/lang/Object;
.source "ItemsAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectLongClickListener;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectLongClickListener;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectLongClickListener;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mParentShootingModeGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->access$000(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->startDrag(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method
