<template>
    <div ref="p" id="visualization"></div>
</template>

<script>
    export default {
        data(){
            return {
               data: [] 
            }
        },
        mounted() {
            axios.get('/api')
            .then((result)=>{
                this.data = result.data
                this.show(this.data)
            })
        },
        methods: {
            show(data){
                var container = this.$refs.p

                var dateObj = new Date();
                var now = Date.now();
                let six =  dateObj.setMonth(dateObj.getMonth()+6);
                
                let set = data.map(d => {
                    return {id: d.id, content: d.name, start: d.end_of_contract};
                });
               
                 // Create a DataSet (allows two way data-binding)
                var items = new vis.DataSet(
                    set
                );
            
                // Configuration for the Timeline
                var options = {
                    max: six,
                    min: now,
                    zoomMax: 15552000000,
                    zoomMin: 604800000,
                    template: function (item, element, data) {
                    return `<a href="/companies/${item.id}">  ${item.content} </p>`
                    },

                };
            
                // Create a Timeline
                var timeline = new vis.Timeline(container, items, options);
                }
        }
    }
    
 
</script>
