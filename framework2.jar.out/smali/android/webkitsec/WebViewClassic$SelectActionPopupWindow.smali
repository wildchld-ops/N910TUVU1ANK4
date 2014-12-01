.class Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;
.super Landroid/widget/PopupWindow;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectActionPopupWindow"
.end annotation


# static fields
.field private static final TW_NEW_POPUP_DIVIDER_LAYOUT:I = 0x109012d

.field private static final TW_NEW_POPUP_TEXT_LAYOUT:I = 0x109012f

.field private static final TW_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x109012e


# instance fields
.field private final ITEM_WIDTH:I

.field public final KNOX_SBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

.field public final KNOX_STOCKBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContentView:Landroid/view/ViewGroup;

.field private mContentViewWidth:I

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mDictTextView:Landroid/widget/TextView;

.field private mDividerImageView1:Landroid/widget/ImageView;

.field private mDividerImageView2:Landroid/widget/ImageView;

.field private mDividerImageView3:Landroid/widget/ImageView;

.field private mDividerImageView4:Landroid/widget/ImageView;

.field private mDividerImageView5:Landroid/widget/ImageView;

.field private mDividerImageView6:Landroid/widget/ImageView;

.field private mDividerImageView7:Landroid/widget/ImageView;

.field private mDividerImageView8:Landroid/widget/ImageView;

.field private mDividerImageView9:Landroid/widget/ImageView;

.field private mDividerWidth:I

.field private mFindTextView:Landroid/widget/TextView;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mItemWidth:I

.field private mMenuCount:I

.field private mPasteTextView:Landroid/widget/TextView;

.field private mPopupBgPaddingHeight:I

.field private mPopupBgPaddingWidth:I

.field private mPopupWidthLandscape:I

.field private mPopupWidthPortrait:I

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mTranslateTextView:Landroid/widget/TextView;

.field private mWebSearchTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x0

    const v23, 0x10102c8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v21, 0x47

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->ITEM_WIDTH:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mItemWidth:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthPortrait:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthLandscape:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingHeight:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerWidth:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    new-instance v21, Landroid/content/ComponentName;

    const-string/jumbo v22, "sec_container_1.com.sec.android.app.sbrowser"

    const-string v23, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_SBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    new-instance v21, Landroid/content/ComponentName;

    const-string/jumbo v22, "sec_container_1.com.android.browser"

    const-string v23, "com.android.browser.BrowserActivity"

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_STOCKBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcBG:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v21, 0x3ea

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    const/16 v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10500ee

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10500ee

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x28

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v16, Landroid/widget/LinearLayout;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v21, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v21, 0x109012e

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v21, 0x109012f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x104000d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcSelectAll:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012d

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040003

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcCut:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012d

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040001

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcCopy:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012d

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x104000b

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcPaste:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012d

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040018

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcClipboard:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012d

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040895

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcShare:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012d

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040894

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcDict:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012d

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040827

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcWebSearch:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012d

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040a6d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcTranslate:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012d

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v21, 0x109012f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040826

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcFind:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    return v0
.end method

.method private isWebSearchAvailable()Z
    .locals 4

    const/4 v1, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "new_search"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method calculateSelectPopupSizes()V
    .locals 4

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mItemWidth:I

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v3, v3, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcBG:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingHeight:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v3, v3, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcDivider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerWidth:I

    iget v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthPortrait:I

    iget v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x6

    iget v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthLandscape:I

    return-void

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    goto :goto_0
.end method

.method getSelectPopupHeight()I
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42a00000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method getSelectPopupWidth()I
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    goto :goto_0
.end method

.method public hide()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method protected measureContent()V
    .locals 5

    const/high16 v4, -0x80000000

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xb9

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->cutSelectionSec()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->playCopyCutVibrator()Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->copySelectionSec()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->playCopyCutVibrator()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboard()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->playPasteVibrator()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "webview"

    const-string v18, "getSelectionSec() is null."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    const/16 v18, 0x7530

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    const-string/jumbo v17, "webview"

    const-string/jumbo v18, "selected string is too long. Cut it"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v17, "com.android.email"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "android.intent.extra.TEXT"

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v17, "theme"

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v17

    const v18, 0x1040895

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_a

    const-string/jumbo v17, "webview"

    const-string/jumbo v18, "mWebView.getSelectionSec() is null."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v17, "true"

    const-string v18, "isKnoxMode"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "sec_container_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    :cond_b
    new-instance v3, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    const/16 v18, 0x7d0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    const/16 v17, 0x7d0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_c
    const/16 v16, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Web_DisableGoogleInBrowserSearchEngine"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "http://m5.baidu.com/s?from=124n&word="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_SBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_SBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v17, v0

    if-nez v17, :cond_d

    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "https://www.google.com/search?ie=UTF-8&client=ms-android-samsung&source=android-browser&q="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_STOCKBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_STOCKBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v17, v0

    if-nez v17, :cond_f

    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    goto :goto_3

    :catch_2
    move-exception v6

    :try_start_3
    const-string/jumbo v17, "webview"

    const-string v18, "NameNotFoundException : There are no browsers(sbrowser and stockbrowser"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v17, v0

    if-nez v17, :cond_10

    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    goto/16 :goto_3

    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v18, v0

    if-nez v18, :cond_11

    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebView;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    throw v17

    :cond_12
    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    const/16 v18, 0x7d0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_13

    const/16 v17, 0x7d0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_13
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, "query"

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v17, v0

    if-nez v17, :cond_14

    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/webkitsec/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_17

    :try_start_4
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v17, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v17, "mode"

    const-string/jumbo v18, "viewer"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v17, "source_text"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    :try_start_5
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v17, "com.sec.android.app.dictionary.SEARCH"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "keyword"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/16 v1, 0xba

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->access$2300()Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_1
    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->access$2300()Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindowAfterDelay()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method popupAnimationEffect(I)V
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v2, 0x4

    :goto_0
    move v0, p1

    if-le v0, v2, :cond_0

    sub-int v1, v0, v2

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-int v5, v5

    mul-int/lit8 v6, v1, 0x64

    mul-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow$1;

    invoke-direct {v4, p0, v1}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow$1;-><init>(Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x6

    goto :goto_0
.end method

.method setSelectPopupWidth()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerWidth:I

    iget v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mItemWidth:I

    iget v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    :goto_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthPortrait:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthLandscape:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_1
.end method

.method public show(II)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    invoke-virtual {p0, p1, p2, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method

.method updateMenuVisibility()V
    .locals 26

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsSelectionChanged:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1800(Landroid/webkitsec/WebViewClassic;)Z

    move-result v24

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    move/from16 v24, v0

    # setter for: Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1902(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v24

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$2000(Landroid/webkitsec/WebViewClassic;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1902(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z
    invoke-static/range {v24 .. v25}, Landroid/webkitsec/WebViewClassic;->access$2002(Landroid/webkitsec/WebViewClassic;Z)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$2000(Landroid/webkitsec/WebViewClassic;)Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z
    invoke-static/range {v24 .. v25}, Landroid/webkitsec/WebViewClassic;->access$2002(Landroid/webkitsec/WebViewClassic;Z)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->isPasswordField()Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v24, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1902(Z)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mIsSelectionChanged:Z
    invoke-static/range {v24 .. v25}, Landroid/webkitsec/WebViewClassic;->access$1802(Landroid/webkitsec/WebViewClassic;Z)Z

    :cond_3
    # getter for: Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->access$1900()Z

    move-result v18

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.sec.android.app.translator.TRANSLATE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v24

    if-eqz v24, :cond_5

    const-string/jumbo v24, "sec_container_"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_10

    :cond_5
    const/4 v11, 0x0

    :goto_0
    const/4 v8, 0x0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_11

    const/4 v8, 0x0

    :goto_1
    if-nez v19, :cond_13

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->isWebSearchAvailable()Z

    move-result v24

    if-eqz v24, :cond_13

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v24, "true"

    const-string v25, "isKnoxMode"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "sec_container_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_SBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    const/16 v25, 0x80

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    new-instance v20, Landroid/webkitsec/WebViewClassic$NoAction;

    invoke-direct/range {v20 .. v20}, Landroid/webkitsec/WebViewClassic$NoAction;-><init>()V

    const-string v24, "com.android.email"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "clipboardEx"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/sec/clipboard/ClipboardExManager;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/sec/clipboard/ClipboardExManager;->hasDataOf(I)Z

    move-result v24

    if-eqz v24, :cond_15

    const/4 v14, 0x1

    :goto_5
    if-eqz v18, :cond_16

    if-eqz v14, :cond_16

    const/4 v10, 0x1

    :goto_6
    if-nez v18, :cond_17

    # getter for: Landroid/webkitsec/WebViewClassic;->bWebFindDialogEnabled:Z
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->access$2100()Z

    move-result v24

    if-eqz v24, :cond_17

    const/4 v9, 0x1

    :goto_7
    if-eqz v18, :cond_18

    if-nez v19, :cond_18

    const/4 v7, 0x1

    :goto_8
    if-nez v19, :cond_19

    const/4 v6, 0x1

    :goto_9
    if-eqz v18, :cond_1a

    if-eqz v14, :cond_1a

    const/4 v5, 0x1

    :goto_a
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    :cond_8
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    :cond_9
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    :cond_a
    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    :cond_b
    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    :cond_c
    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    :cond_d
    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    :cond_e
    if-eqz v8, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v7, :cond_1b

    const/16 v24, 0x0

    :goto_b
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v7, :cond_1c

    const/16 v24, 0x0

    :goto_c
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v6, :cond_1d

    const/16 v24, 0x0

    :goto_d
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v6, :cond_1e

    const/16 v24, 0x0

    :goto_e
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v10, :cond_1f

    const/16 v24, 0x0

    :goto_f
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v10, :cond_20

    const/16 v24, 0x0

    :goto_10
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v5, :cond_21

    const/16 v24, 0x0

    :goto_11
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v5, :cond_22

    const/16 v24, 0x0

    :goto_12
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v6, :cond_23

    const/16 v24, 0x0

    :goto_13
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v6, :cond_24

    const/16 v24, 0x0

    :goto_14
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v8, :cond_25

    const/16 v24, 0x0

    :goto_15
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v8, :cond_26

    const/16 v24, 0x0

    :goto_16
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v11, :cond_27

    const/16 v24, 0x0

    :goto_17
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v11, :cond_28

    const/16 v24, 0x0

    :goto_18
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v9, :cond_29

    const/16 v24, 0x0

    :goto_19
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v9, :cond_2a

    const/16 v24, 0x0

    :goto_1a
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v12, :cond_2b

    const/16 v24, 0x0

    :goto_1b
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v12, :cond_2c

    const/16 v24, 0x0

    :goto_1c
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_10
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_11
    if-nez v19, :cond_12

    const/4 v8, 0x1

    :goto_1d
    goto/16 :goto_1

    :cond_12
    const/4 v8, 0x0

    goto :goto_1d

    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v15

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_STOCKBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    const/16 v25, 0x80

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v16

    const-string/jumbo v24, "webview"

    const-string v25, "NameNotFoundException : There are no browsers(sbrowser and stockbrowser"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_14
    const/16 v24, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic;->bWebFindDialogEnabled:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$2102(Z)Z

    goto/16 :goto_4

    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_1b
    const/16 v24, 0x8

    goto/16 :goto_b

    :cond_1c
    const/16 v24, 0x8

    goto/16 :goto_c

    :cond_1d
    const/16 v24, 0x8

    goto/16 :goto_d

    :cond_1e
    const/16 v24, 0x8

    goto/16 :goto_e

    :cond_1f
    const/16 v24, 0x8

    goto/16 :goto_f

    :cond_20
    const/16 v24, 0x8

    goto/16 :goto_10

    :cond_21
    const/16 v24, 0x8

    goto/16 :goto_11

    :cond_22
    const/16 v24, 0x8

    goto/16 :goto_12

    :cond_23
    const/16 v24, 0x8

    goto/16 :goto_13

    :cond_24
    const/16 v24, 0x8

    goto/16 :goto_14

    :cond_25
    const/16 v24, 0x8

    goto/16 :goto_15

    :cond_26
    const/16 v24, 0x8

    goto/16 :goto_16

    :cond_27
    const/16 v24, 0x8

    goto/16 :goto_17

    :cond_28
    const/16 v24, 0x8

    goto/16 :goto_18

    :cond_29
    const/16 v24, 0x8

    goto/16 :goto_19

    :cond_2a
    const/16 v24, 0x8

    goto/16 :goto_1a

    :cond_2b
    const/16 v24, 0x8

    goto/16 :goto_1b

    :cond_2c
    const/16 v24, 0x8

    goto/16 :goto_1c
.end method
