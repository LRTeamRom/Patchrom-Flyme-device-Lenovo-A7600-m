.class Lcom/lenovo/settings/SysSettings$3;
.super Ljava/lang/Object;
.source "SysSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/SysSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/SysSettings;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/SysSettings;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x270f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v0, v0, Lcom/lenovo/settings/SysSettings;->recentList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v3

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    # getter for: Lcom/lenovo/settings/SysSettings;->m_can_show:Z
    invoke-static {v0}, Lcom/lenovo/settings/SysSettings;->access$000(Lcom/lenovo/settings/SysSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/lenovo/settings/SysSettings;->m_start_y:F

    .line 132
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iput v4, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    .line 133
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v1, v1, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/settings/SysSettings;->onReceive(IZ)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 135
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v2, v2, Lcom/lenovo/settings/SysSettings;->m_start_y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    .line 136
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v0, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v0, v0, Lcom/lenovo/settings/SysSettings;->allSettingsList:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v3, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v1, v1, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/settings/SysSettings;->onReceive(IZ)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v2, v2, Lcom/lenovo/settings/SysSettings;->m_start_y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    .line 146
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v0, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {v0, v6, v3}, Lcom/lenovo/settings/SysSettings;->onReceive(IZ)V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$3;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {v0, v6, v5}, Lcom/lenovo/settings/SysSettings;->onReceive(IZ)V

    goto :goto_0
.end method
