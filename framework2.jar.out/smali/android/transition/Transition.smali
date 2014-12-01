.class public abstract Landroid/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Transition$ArrayListManager;,
        Landroid/transition/Transition$AnimationInfo;,
        Landroid/transition/Transition$TransitionListenerAdapter;,
        Landroid/transition/Transition$TransitionListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/transition/TransitionValuesMaps;

.field private mEnded:Z

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field mNumInstances:I

.field mParent:Landroid/transition/TransitionSet;

.field mPaused:Z

.field mSceneRoot:Landroid/view/ViewGroup;

.field mStartDelay:J

.field private mStartValues:Landroid/transition/TransitionValuesMaps;

.field mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    iput-wide v3, p0, Landroid/transition/Transition;->mStartDelay:J

    iput-wide v3, p0, Landroid/transition/Transition;->mDuration:J

    iput-object v1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    new-instance v0, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    new-instance v0, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iput-object v1, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    iput-object v1, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    iput-boolean v2, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    iput v2, p0, Landroid/transition/Transition;->mNumInstances:I

    iput-boolean v2, p0, Landroid/transition/Transition;->mPaused:Z

    iput-boolean v2, p0, Landroid/transition/Transition;->mEnded:Z

    iput-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Landroid/transition/Transition;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 12

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/widget/ListView;

    if-eqz v10, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_3
    const/4 v1, -0x1

    const-wide/16 v3, -0x1

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :goto_0
    iget-object v10, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_4
    iget-object v10, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_5
    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    if-eqz p1, :cond_7

    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_7

    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v3

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/View;->setHasTransientState(Z)V

    goto :goto_0

    :cond_7
    new-instance v9, Landroid/transition/TransitionValues;

    invoke-direct {v9}, Landroid/transition/TransitionValues;-><init>()V

    iput-object p1, v9, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz p2, :cond_b

    invoke-virtual {p0, v9}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    :goto_2
    if-eqz p2, :cond_d

    if-nez v2, :cond_c

    iget-object v10, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v10, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_8

    iget-object v10, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v10, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    :goto_3
    instance-of v10, p1, Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_9
    iget-object v10, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_a
    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_f

    if-eqz p1, :cond_f

    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v6, :cond_f

    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v9}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_2

    :cond_c
    iget-object v10, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3, v4, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :cond_d
    if-nez v2, :cond_e

    iget-object v10, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v10, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_8

    iget-object v10, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v10, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_e
    iget-object v10, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3, v4, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :cond_f
    move-object v7, p1

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v0, v10, :cond_0

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-lez p2, :cond_0

    if-eqz p3, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private static getRunningAnimators()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    sget-object v1, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sget-object v1, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Landroid/transition/Transition$1;

    invoke-direct {v0, p0, p2}, Landroid/transition/Transition$1;-><init>(Landroid/transition/Transition;Landroid/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->animate(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(I)Landroid/transition/Transition;
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 4

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v0, Landroid/transition/Transition$2;

    invoke-direct {v0, p0}, Landroid/transition/Transition$2;-><init>(Landroid/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected cancel()V
    .locals 6

    iget-object v5, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v5, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionCancel(Landroid/transition/Transition;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroid/transition/TransitionValues;)V
.end method

.method public abstract captureStartValues(Landroid/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 5

    invoke-virtual {p0, p2}, Landroid/transition/Transition;->clearValues(Z)V

    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    :cond_0
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/transition/TransitionValues;

    invoke-direct {v2}, Landroid/transition/TransitionValues;-><init>()V

    iput-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    :goto_1
    if-eqz p2, :cond_3

    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_1

    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_1

    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_9

    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_5

    new-instance v2, Landroid/transition/TransitionValues;

    invoke-direct {v2}, Landroid/transition/TransitionValues;-><init>()V

    iput-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz p2, :cond_6

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    :goto_4
    if-eqz p2, :cond_7

    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_4

    :cond_7
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    :cond_9
    return-void
.end method

.method clearValues(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    goto :goto_0
.end method

.method public clone()Landroid/transition/Transition;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/transition/Transition;

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    new-instance v2, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    new-instance v2, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V
    .locals 40

    new-instance v7, Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    new-instance v8, Landroid/util/SparseArray;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-direct {v8, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v13, v0, :cond_0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    move/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    new-instance v10, Landroid/util/LongSparseArray;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/LongSparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-direct {v10, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/LongSparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v13, v0, :cond_1

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    move-wide/from16 v0, v16

    move-object/from16 v2, v36

    invoke-virtual {v10, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    const/16 v31, 0x0

    const/4 v6, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v36, v0

    if-eqz v36, :cond_3

    const/16 v20, 0x1

    :cond_3
    if-nez v20, :cond_9

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getId()I

    move-result v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/transition/TransitionValues;

    move-object/from16 v31, v36

    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_6

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_4
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_2

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/transition/TransitionValues;

    move-object/from16 v31, v36

    goto :goto_3

    :cond_6
    const/16 v36, -0x1

    move/from16 v0, v16

    move/from16 v1, v36

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    const/16 v29, 0x0

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/View;

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getId()I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    move-object/from16 v29, v35

    goto :goto_5

    :cond_8
    if-eqz v29, :cond_4

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/widget/ListView;

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v36

    if-eqz v36, :cond_2

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v21

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/transition/TransitionValues;

    move-wide/from16 v0, v21

    invoke-virtual {v10, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/LongSparseArray;->size()I

    move-result v32

    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v32

    if-ge v13, v0, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/transition/TransitionValues;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_d
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getId()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_d

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_e

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/transition/TransitionValues;

    move-object/from16 v31, v36

    :goto_8
    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/transition/TransitionValues;

    move-object/from16 v31, v36

    goto :goto_8

    :cond_f
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v9, :cond_11

    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    const/16 v36, 0x0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_10

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/transition/TransitionValues;

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v11, :cond_12

    invoke-virtual {v10, v13}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/transition/TransitionValues;

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_12
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v30

    const/4 v13, 0x0

    :goto_b
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v13, v0, :cond_1d

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/transition/TransitionValues;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    if-nez v31, :cond_13

    if-eqz v6, :cond_19

    :cond_13
    if-eqz v31, :cond_14

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_19

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v6}, Landroid/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_19

    const/16 v34, 0x0

    const/16 v19, 0x0

    if-eqz v6, :cond_1b

    iget-object v0, v6, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v28

    if-eqz v34, :cond_18

    if-eqz v28, :cond_18

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    if-lez v36, :cond_18

    new-instance v19, Landroid/transition/TransitionValues;

    invoke-direct/range {v19 .. v19}, Landroid/transition/TransitionValues;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/transition/TransitionValues;

    if-eqz v24, :cond_15

    const/16 v23, 0x0

    :goto_c
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v36, v0

    aget-object v37, v28, v23

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v38, v0

    aget-object v39, v28, v23

    invoke-interface/range {v38 .. v39}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-interface/range {v36 .. v38}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    :cond_15
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v25

    const/16 v23, 0x0

    :goto_d
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_18

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/transition/Transition$AnimationInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1a

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_17

    :cond_16
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    :cond_17
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    const/4 v5, 0x0

    :cond_18
    :goto_e
    if-eqz v5, :cond_19

    new-instance v18, Landroid/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/TransitionValues;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    :cond_1a
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_d

    :cond_1b
    if-eqz v31, :cond_1c

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v34, v0

    :goto_f
    goto :goto_e

    :cond_1c
    const/16 v34, 0x0

    goto :goto_f

    :cond_1d
    return-void
.end method

.method protected end()V
    .locals 7

    const/4 v6, 0x0

    iget v5, p0, Landroid/transition/Transition;->mNumInstances:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/transition/Transition;->mNumInstances:I

    iget v5, p0, Landroid/transition/Transition;->mNumInstances:I

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/TransitionValues;

    iget-object v4, v3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasTransientState()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v6}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/TransitionValues;

    iget-object v4, v3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasTransientState()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v6}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/transition/Transition;->mEnded:Z

    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .locals 8

    iget-object v7, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    invoke-virtual {v7, p1, p2}, Landroid/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v5

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    if-eqz p2, :cond_3

    iget-object v6, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    :goto_1
    iget-object v7, v6, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v7, v6, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    :cond_2
    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/ListView;

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-object v7, v6, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    goto :goto_0

    :cond_3
    iget-object v6, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    goto :goto_1
.end method

.method isValidTarget(Landroid/view/View;J)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    iget-object v3, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v6, p2

    if-nez v3, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_8

    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_7

    move v3, v5

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move v3, v4

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 7

    iget-boolean v6, p0, Landroid/transition/Transition;->mEnded:Z

    if-nez v6, :cond_2

    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionPause(Landroid/transition/Transition;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/transition/Transition;->mPaused:Z

    :cond_2
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 19

    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    :goto_0
    if-ltz v6, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/transition/Transition$AnimationInfo;

    if-eqz v12, :cond_4

    iget-object v0, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v0, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v5, 0x0

    iget-object v14, v12, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    iget-object v15, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/transition/TransitionValues;

    move-object/from16 v10, v17

    :goto_1
    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/transition/TransitionValues;

    :cond_0
    if-eqz v14, :cond_2

    if-eqz v10, :cond_2

    iget-object v0, v14, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v0, v14, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iget-object v0, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v13, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_3
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->runAnimators()V

    return-void
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeTarget(I)Landroid/transition/Transition;
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public resume()V
    .locals 7

    iget-boolean v6, p0, Landroid/transition/Transition;->mPaused:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroid/transition/Transition;->mEnded:Z

    if-nez v6, :cond_1

    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionResume(Landroid/transition/Transition;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/transition/Transition;->mPaused:Z

    :cond_2
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    invoke-direct {p0, v0, v2}, Landroid/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    return-void
.end method

.method public setDuration(J)Landroid/transition/Transition;
    .locals 0

    iput-wide p1, p0, Landroid/transition/Transition;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setStartDelay(J)Landroid/transition/Transition;
    .locals 0

    iput-wide p1, p0, Landroid/transition/Transition;->mStartDelay:J

    return-object p0
.end method

.method protected start()V
    .locals 4

    iget v3, p0, Landroid/transition/Transition;->mNumInstances:I

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/transition/Transition;->mEnded:Z

    :cond_1
    iget v3, p0, Landroid/transition/Transition;->mNumInstances:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/transition/Transition;->mNumInstances:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-wide/16 v5, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Landroid/transition/Transition;->mDuration:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dur("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/transition/Transition;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-wide v2, p0, Landroid/transition/Transition;->mStartDelay:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/transition/Transition;->mStartDelay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tgts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    if-lez v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    if-lez v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    return-object v1
.end method
