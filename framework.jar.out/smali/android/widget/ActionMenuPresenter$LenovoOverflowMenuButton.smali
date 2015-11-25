.class public Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LenovoOverflowMenuButton"
.end annotation


# instance fields
.field private mChecked:Z

.field private final mTempPts:[F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 809
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 810
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 807
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->mTempPts:[F

    .line 812
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->setClickable(Z)V

    .line 813
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->setFocusable(Z)V

    .line 814
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->setVisibility(I)V

    .line 815
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->setEnabled(Z)V

    .line 817
    new-instance v0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton$1;

    invoke-direct {v0, p0, p0, p1}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton$1;-><init>(Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;Landroid/view/View;Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 846
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 926
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 927
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 928
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->getDrawableState()[I

    move-result-object v1

    .line 932
    .local v1, "myDrawableState":[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 934
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->invalidate()V

    .line 936
    .end local v1    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 897
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->mChecked:Z

    return v0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 918
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 919
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    # getter for: Landroid/widget/ActionMenuPresenter;->CHECKED_STATE_SET:[I
    invoke-static {}, Landroid/widget/ActionMenuPresenter;->access$1000()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->mergeDrawableStates([I[I)[I

    .line 922
    :cond_0
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 872
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 873
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 874
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 850
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->toggle()V

    .line 851
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    :goto_0
    return v1

    .line 855
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->playSoundEffect(I)V

    .line 856
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 906
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 907
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->mChecked:Z

    .line 908
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->refreshDrawableState()V

    .line 909
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 911
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 878
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    move-result v1

    .line 881
    .local v1, "changed":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 882
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 883
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 884
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->mTempPts:[F

    .line 885
    .local v4, "pts":[F
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    .line 886
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 887
    aget v5, v4, v7

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v5, v6

    .line 888
    .local v3, "offset":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 891
    .end local v3    # "offset":I
    .end local v4    # "pts":[F
    :cond_0
    return v1
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->setChecked(Z)V

    .line 914
    return-void

    .line 913
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
