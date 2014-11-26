.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditModeActions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ColorAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SwingAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TelopAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$AlignAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ShowMenuAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ResetAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EndEditAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StartEditAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PreviewAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CancelAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StopSelectionAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ClearStylesAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$HorizontalLineAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAllAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PasteAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CutAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CopyAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$NothingAction;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "EditModeActions"


# instance fields
.field private mActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;",
            ">;"
        }
    .end annotation
.end field

.field private mAlignAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$AlignAction;

.field private mBackgroundColorAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;

.field private mCancelEditAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CancelAction;

.field private mClearStylesAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ClearStylesAction;

.field private mColorAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ColorAction;

.field private mCopyAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CopyAction;

.field private mCutAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CutAction;

.field private mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

.field private mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mEndEditAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EndEditAction;

.field private mHorizontalLineAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$HorizontalLineAction;

.field private mImageAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;

.field private mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

.field private mMarqueeDialogAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;

.field private mMode:I

.field private mNothingAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$NothingAction;

.field private mPasteAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PasteAction;

.field private mPreviewAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PreviewAction;

.field private mResetAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ResetAction;

.field private mSelectAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;

.field private mSelectAllAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAllAction;

.field private mShowMenuAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ShowMenuAction;

.field private mSizeAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;

.field private mStartEditAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StartEditAction;

.field private mStopSelectionAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StopSelectionAction;

.field private mSwingAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SwingAction;

.field private mTelopAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TelopAction;

.field private mTextViewAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;

.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 3
    .param p2    # Lcom/android/ex/editstyledtext/EditStyledText;
    .param p3    # Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    .param p4    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mMode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$NothingAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$NothingAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mNothingAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$NothingAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CopyAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CopyAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mCopyAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CopyAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PasteAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PasteAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mPasteAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PasteAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mSelectAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CutAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CutAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mCutAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CutAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAllAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAllAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mSelectAllAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAllAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$HorizontalLineAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$HorizontalLineAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mHorizontalLineAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$HorizontalLineAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StopSelectionAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StopSelectionAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mStopSelectionAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StopSelectionAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ClearStylesAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ClearStylesAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mClearStylesAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ClearStylesAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mImageAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mBackgroundColorAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PreviewAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PreviewAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mPreviewAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PreviewAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CancelAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CancelAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mCancelEditAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CancelAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mTextViewAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StartEditAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StartEditAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mStartEditAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StartEditAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EndEditAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EndEditAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mEndEditAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EndEditAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ResetAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ResetAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mResetAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ResetAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ShowMenuAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ShowMenuAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mShowMenuAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ShowMenuAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$AlignAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$AlignAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mAlignAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$AlignAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TelopAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TelopAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mTelopAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TelopAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SwingAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SwingAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mSwingAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SwingAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mMarqueeDialogAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ColorAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ColorAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mColorAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ColorAction;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mSizeAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;

    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    iput-object p4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mNothingAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$NothingAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mCopyAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CopyAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mPasteAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PasteAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mSelectAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mCutAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CutAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mSelectAllAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAllAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mHorizontalLineAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$HorizontalLineAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mStopSelectionAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StopSelectionAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mClearStylesAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ClearStylesAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mImageAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mBackgroundColorAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mPreviewAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$PreviewAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mCancelEditAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CancelAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mTextViewAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mStartEditAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$StartEditAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mEndEditAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EndEditAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mResetAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ResetAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mShowMenuAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ShowMenuAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mAlignAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$AlignAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mTelopAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TelopAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mSwingAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SwingAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mMarqueeDialogAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mColorAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ColorAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mSizeAction:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1800(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;
    .locals 1
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    .locals 1
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I
    .locals 1
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mMode:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;
    .locals 1
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    return-object v0
.end method

.method private getAction(I)Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;)V
    .locals 2
    .param p1    # I
    .param p2    # Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public doNext()Z
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mMode:I

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    move-result v0

    return v0
.end method

.method public doNext(I)Z
    .locals 5
    .param p1    # I

    const/4 v1, 0x0

    const-string v2, "EditModeActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- do the next action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->getAction(I)Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "EditModeActions"

    const-string v3, "--- invalid action error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doNotSelected()Z

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doStartPosIsSelected()Z

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doEndPosIsSelected()Z

    move-result v1

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doSelectionIsFixedAndWaitingInput()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doSelectionIsFixed()Z

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAction(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onAction(ILjava/lang/Object;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onAction(I[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
    .param p2    # [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->getAction(I)Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->addParams([Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mMode:I

    invoke-virtual {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    return-void
.end method

.method public onSelectAction()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    return-void
.end method
