.class Lcom/lenovo/settings/SysSettings$1;
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
    .line 68
    iput-object p1, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

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

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 70
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v0, v0, Lcom/lenovo/settings/SysSettings;->recentList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v4

    .line 73
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/lenovo/settings/SysSettings;->m_start_y:F

    .line 76
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    iput v5, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    .line 77
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v1, v1, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/settings/SysSettings;->onReceive(IZ)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 81
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v2, v2, Lcom/lenovo/settings/SysSettings;->m_start_y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    .line 82
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v0, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v1, v1, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/settings/SysSettings;->onReceive(IZ)V

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 86
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v2, v2, Lcom/lenovo/settings/SysSettings;->m_start_y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    .line 87
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v0, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    const/high16 v1, -0x3db80000    # -50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {v0, v6, v3}, Lcom/lenovo/settings/SysSettings;->onReceive(IZ)V

    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$1;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {v0, v6, v4}, Lcom/lenovo/settings/SysSettings;->onReceive(IZ)V

    goto :goto_0
.end method
