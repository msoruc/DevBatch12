import { LightningElement } from 'lwc';

export default class P2cNonPrimitivesParent1 extends LightningElement {
    carouselInfo = [
            {
                src: "https://www.superqbit.com/resources/images/bg/highland-waterfalls.png",
                header: "First Card",
                description: "First card description.",
                alternativeText: "First card accessible description.",
                href: "javascript:void(0);"
            },
            {
                src: "https://www.superqbit.com/resources/images/bg/arid-dunes.png",
                header: "Second Card",
                description: "Second card description.",
                alternativeText: "Second card accessible description.",
                href: "javascript:void(0);"
            },
            {
                src: "https://www.superqbit.com/resources/images/bg/bg4.png",
                header: "Third Card",
                description: "Third card description.",
                alternativeText: "Third card accessible description.",
                href: "javascript:void(0);"
            }
        ]
}