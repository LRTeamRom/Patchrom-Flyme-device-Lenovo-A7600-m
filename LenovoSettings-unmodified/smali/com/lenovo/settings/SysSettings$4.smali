.class Lcom/lenovo/settings/SysSettings$4;
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
    .line 163
    iput-object p1, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x1

    .line 165
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v0, v0, Lcom/lenovo/settings/SysSettings;->recentList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v3

    .line 168
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/lenovo/settings/SysSettings;->m_start_y:F

    .line 171
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    .line 172
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v1, v1, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/lenovo/settings/SysSettings;->m_init_height:I

    .line 173
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v0, v0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v1, v1, Lcom/lenovo/settings/SysSettings;->m_init_height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 177
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v2, v2, Lcom/lenovo/settings/SysSettings;->m_start_y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    .line 185
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v0, v0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v2, v2, Lcom/lenovo/settings/SysSettings;->m_delta_y:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v0, v0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v1, v1, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 191
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-boolean v0, v0, Lcom/lenovo/settings/SysSettings;->m_is_hidden:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v0, v0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v0, v2, :cond_5

    .line 192
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/settings/SysSettings;->m_is_hidden:Z

    .line 198
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-boolean v0, v0, Lcom/lenovo/settings/SysSettings;->m_is_hidden:Z

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    # invokes: Lcom/lenovo/settings/SysSettings;->hideRecent()V
    invoke-static {v0}, Lcom/lenovo/settings/SysSettings;->access$100(Lcom/lenovo/settings/SysSettings;)V

    goto :goto_0

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-boolean v0, v0, Lcom/lenovo/settings/SysSettings;->m_is_hidden:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget v0, v0, Lcom/lenovo/settings/SysSettings;->m_init_height:I

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iget-object v1, v1, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_4

    .line 195
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    iput-boolean v3, v0, Lcom/lenovo/settings/SysSettings;->m_is_hidden:Z

    goto :goto_1

    .line 201
    :cond_6
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$4;->this$0:Lcom/lenovo/settings/SysSettings;

    # invokes: Lcom/lenovo/settings/SysSettings;->showRecent()V
    invoke-static {v0}, Lcom/lenovo/settings/SysSettings;->access$200(Lcom/lenovo/settings/SysSettings;)V

    goto/16 :goto_0
.end method
